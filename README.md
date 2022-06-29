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

## About
The Red Queen benchmark framework was created to facilitate the benchmarking
algorithms used in quantum compilation.

The framework is tightly integrated into `pytest`.  Therefore, to use it 
effectively, you should know the basics of `pytest` first. Take a look at the 
[introductory material](https://docs.pytest.org/en/latest/getting-started.html).

## Usage
Red Queen is a framework for benchmarking quantum compilation algorithms. Since
it was not designed as a package, there is no notion of installation. Hence, you
must clone this repository to use it:
```bash
git clone git@github.com:Qiskit/red-queen.git
```

To run benchmarks, you must first go to the `red-queen` directory and install 
the required packages:
```bash
cd red-queen
pip install -r requirements.txt
```

Now, suppose you want to run the mapping benchmarks using only `tweedledum`.
You must do it using `pytest`
```bash
pytest games/mapping/map_queko.py -m tweedledum --store
```
The benchmark suite will consider all functions named `bench_*` in 
`games/mapping/map_queko.py`. Because we set the `-m` option, only the the ones
marked with `tweedledum` will be run. (We could easy do the same for `qiskit`).
If you don't define a `-m` option, all `bench_*` functions will be run.

The `--store` option tells the framework to store the results in json file in
the `results` directory. To see the results as a table, you can use the you can
use:
```bash
python -m report.console_tables --storage results/0001_bench.json
```
To see the results in a web browser you can use:
```bash
python reports/interactive_viewer.py <path>
```
where "path" is a JSON results file or a directory containing the JSON results
files. If using a directory, it is assummed all the data in the directory have
the same result format.

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
