> "Well, in our country," said Alice, still panting a little, "you'd generally
> get to somewhere else—if you run very fast for a long time, as we've been
> doing."
>
> "A slow sort of country!" said the Queen. "Now, here, you see, it takes all
> the running you can do, to keep in the same place. If you want to get
> somewhere else, you must run at least twice as fast as that!"
>
> [Carroll, Lewis: Through the Looking-Glass, Chapter 2](
    https://www.gutenberg.org/files/12/12-h/12-h.htm)


# About

The Red Queen benchmark framework was created to facilitate the benchmarking
algorithms used in quantum compilation.

The framework is tightly integrated into `pytest`.  Therefore, to use it
effectively, you should know the basics of `pytest` first. Take a look at the
[introductory material](https://docs.pytest.org/en/latest/getting-started.html).



# Usage


Red Queen is a framework for benchmarking quantum compilation algorithms. Since
is is still in early development, you must clone this repository to use it:


```bash
git clone git@github.com:Qiskit/red-queen.git
```

To run benchmarks, you must first go to the `red-queen` directory and install
the required packages:


```bash
cd red-queen
pip install .
```


Red Queen has a `CLI` (command line interface) that you can use to execute benchmarks. 


The general templete for the `CLI` is as follows:



```bash
red-queen -c <complier> -t <benchmark_type> -b <benchmark_name>
```


Now, suppose you want to run the mapping benchmarks using only `tweedledum`.
You can do this via the `CLI` or with `pytest`



[For MacOs and Linux]

With `CLI`

```bash
red-queen -c tweedledum -t mapping -b map_queko.py
```

With `pytest`

```bash
python -m pytest games/mapping/map_queko.py -m tweedledum --store
```


[For Windows]

With `CLI`

```bash
red-queen -c tweedledum -t mapping -b map_queko.py
```

With `pytest`

```bash
python -m pytest -s games/mapping/map_queko.py -m tweedledum --store
```

To run pytest or any python script on Windows, you will have to use `python -m` in order to run the
`pytest` command. You will also need to add `-s` to your pytest call to disable
stdin handling.

```bash
python -m pytest -s games/mapping/map_queko.py -m tweedledum --store
```



The benchmark suite will consider all functions named `bench_*` in
`games/mapping/map_queko.py`. Because
The `--store` option tells the framework to store the results in json file in
the `results` directory. To see the results as a table, you can use the you can
use:

```bash
python -m report.console_tables --storage results/0001_bench.json
```


## Warning

This code is still under development. There are many razer sharp edges.

For information of how execution works and other details about the framwork
design, see the [ARCHITECTURE.md](ARCHITECTURE.md)

## Acknowledgments

Some design choices made during the development of this framework were based
on the knowledge of the internals of the following established `pytest` plugins:

* [pytest-xdist](https://github.com/pytest-dev/pytest-xdist)
* [pytest-benchmark](https://github.com/ionelmc/pytest-benchmark)

## License


This software is licensed under the Apache 2.0 licence (see 
[LICENSE](https://github.com/Qiskit/red-queen/blob/main/LICENSE))

## Contributing

If you're interested in contributing to Red Queen please see the
[contributing guide](CONTRIBUTING.md).
