#!/usr/bin/env zsh

echo "Welcome to BenchiQle!"
echo "Enter the first compiler you would like to benchmark (we currently support 'qiskit' and 'pytket'): "
read compiler1
if [ "$compiler1" != "qiskit" ] && [ "$compiler1" != "pytket" ]
then
    echo "Invalid compiler entered, exiting."
    exit 0
fi
echo "Enter the version of the compiler you would like to benchmark "
read version1
echo "Enter the optimization level for which you would like to run the compiler: "
if [ "$compiler1" = "pytket" ]
then
    echo "(pytket supports optimization levels 0, 1, and 2)"
    read opt1
elif [ "$compiler1" = "qiskit" ]
then
    echo "(qiskit supports optimization levels 0, 1, 2, and 3)"
    read opt1
fi
echo "Enter the second compiler you would like to benchmark. Press RETURN if you only want to benchmark one compiler. "
echo "(we currently support only 'qiskit' and 'pytket'): "
read compiler2
if [ -z "$compiler2" ]
then
    echo "No second compiler entered, proceeding with only one compiler."
else
    echo "Benchmarking will be done with $compiler2 as the second compiler."
    echo "Enter the version of the compiler you would like to benchmark: "
    read version2
    echo "Enter the optimization level for which you would like to run the compiler: "
    if [ "$compiler2" = "pytket" ]
    then
        echo "(pytket supports optimization levels 0, 1, and 2)"
        read opt2
    elif [ "$compiler2" = "qiskit" ]
    then
        echo "(qiskit supports optimization levels 0, 1, 2, and 3)"
        read opt2
    fi
fi
echo "Enter the backend you would like to benchmark (default is FakeWashingtonV2): "
echo "SEE: https://docs.quantum.ibm.com/api/qiskit/providers_fake_provider"
read backend
if [ -z "$backend" ]
then
    backend="FakeWashingtonV2"
fi
echo "Enter the number of times you would like to run each benchmark (default is 1): "
read num_runs
if [ -z "$num_runs" ]
then
    num_runs=1
fi

venv_spinup () {
    # Naming convention: venv_compilerName_versionNumber
    venv_name="venv_${1}_$2"
    cd virtual_environments
    if [ -d "$venv_name" ]
    then
        echo "Starting up virtual environment $venv_name."
        source $venv_name/bin/activate
    else
        echo "Virtual environment $venv_name does not yet exist on your system."
        echo "Creating virtual environment $venv_name."
        python3 -m venv $venv_name
        source $venv_name/bin/activate
        pip install memory_profiler
        pip install numpy
        
        if [ "$1" = "pytket" ]
        then
            pip install pytket==$2
            pip install qiskit
        elif [ "$1" = "qiskit" ]
        then
            pip install qiskit==$2
            pip install pytket
        fi
    fi

    cd ..
    python3 runner.py $1 $2 $3 $4 $5 $6 
    deactivate
}

second_compiler_readout=false
venv_spinup $compiler1 $version1 $opt1 $backend $num_runs $second_compiler_readout

if [ -z "$compiler2" ]
then
    echo "No second compiler entered, exiting."
    exit 0
fi

second_compiler_readout=true
venv_spinup $compiler2 $version2 $opt2 $backend $num_runs $second_compiler_readout