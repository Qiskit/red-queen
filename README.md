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
TODO

## The games
TODO

## How execution works
The inner workings of this framework is quite similar
to that of [pytest-xdist](https://github.com/pytest-dev/pytest-xdist).

The RedQueen benchmark framework works by spawning one or more `Pawn`s, which 
are controlled by a `Rook`. The communication between the `Rook` and the `Pawn`s
is managed by `Knight`s. Furthermore, the `Rook` must report results back to the 
`Queen` and the Bishop, which is responsible for storing those results.  Each 
`Pawn` is responsible for collecting tests and running the tests assigned to it
by the `Rook`.

A slightly more details of the working flow is as follows:

1. The `Queen` initializes instances of a `Rook` and a `Bishop`.
2. At the beginning of the test session, the `Queen` tells the `Rook` how many 
pawns it should employ to run all tests. In turn, the `Rook` spawns the pawns as
subprocesses.  The communication between the `Rook` and the `Pawn`s is managed 
by `Knight` objects and makes use of `Pipe`s.
3. For technical reasons [1], each `Pawn` itself is a mini `pytest` runner.
Whenever a `Pawn` is initialized, it performs an entire test collection and
reports the number of collected tests back to the `Rook`.  After that, a pawn 
must sit idle, waiting for commands.  

(Note that the `Rook` does not perform any collection itself.)

4. After spawning all `Pawns`, it waits for all of them to report back with the
total number of collected tests.
5. If all is well, the `Rook` distributes tests among the pawns by sending them
indexes of the test they should execute. (This works because all `Pawn`s have
the same collected list of tests.)
6. As the `Pawn`s start and complete tests, they report results back to the
`Rook` through the `Knight`s. In turn, the `Rook` forwards the results to the
`Bishop` and the appropriate `pytest` hooks (`pytest_runtest_logstart`,
`pytest_runtest_logreport`, and `pytest_runtest_logfinish`).  The latter is
essential to `pytest` be able to report progress.
7. The `Rook` assigns new tests to `Pawn`s when a test completes.  When it runs
out of tests to assign, it sends a `shutdown` signal.


[1] If the collection of tests was performed by the `Rook`, the `Rook` would 
have to serialize collected items to send them through the pipe, as `Pawn`s
execute in other processes. However, those test items are not easy to serialize!
Furthermore, I believe that even if I managed to serialize test items, the 
solution would be complex and fragile, as any slight change in `pytest` might be
enough to break things.

## Acknowledgments

Some design choices made during the development of this framework were based
on the knowledge of the internals of the following established `pytest` plugins:

* [pytest-xdist](https://github.com/pytest-dev/pytest-xdist)
* [pytest-benchmark](https://github.com/ionelmc/pytest-benchmark)

## License

This software is licensed under the Apache 2.0 licence (see 
[LICENSE](https://github.com/Qiskit/red-queen/blob/main/LICENSE))
