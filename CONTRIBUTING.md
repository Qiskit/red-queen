# Contributing

First read the overall project contributing guidelines. These are all
included in the qiskit documentation:

https://qiskit.org/documentation/contributing_to_qiskit.html

## Contributing to Red Queen

## Style and lint

Red Queen uses 2 tools for verify code formatting and lint checking. The
first tool is [black](https://github.com/psf/black) which is a code formatting
tool that will automatically update the code formatting to a consistent style.
The second tool is [pylint](https://www.pylint.org/) which is a code linter
which does a deeper analysis of the Python code to find both style issues and
potential bugs and other common issues in Python.

You can check that your local modifications conform to the style rules
by running `tox -elint` which will run `black` and `pylint` to check the local
code formatting and lint. You will need to have [tox](https://tox.wiki/en/latest/index.html)
installed to run this command. You can do this with `pip install -U tox`.

If black returns a code formatting error you can run `tox -eblack` to
automatically update the code formatting to conform to the style. However,
if `pylint` returns any error you will have to fix these issues by manually
updating your code.

## Continuous Integration

The red-queen repo has a Continuous Integration (CI) action that test any new 
or modified benchmarks being added in a pull request. This action was implemented 
using [changed-files](https://github.com/tj-actions/changed-files).

In the case that a new type of benchmark category is implemented, a new step
containing the directory of the python file that will be run with pytest should be 
added to `.github/workflows/main.yml`. This step should call on our custom action
`changed-benchmark` which will detect any changed made to any benchmark of a specific 
type. This action uses [changed-files](https://github.com/tj-actions/changed-files). You must also select
a default benchmark `<selected-def-bench>` to run in case a change is made to an 
`__init__.py` file without changing any benchmarks.
Your step should follow the format below:

```yml
    - name: Run changed <new_category> benchmarks
        uses: ./.github/actions/changed-benchmark
        with:
            path: red_queen/games/<new_category>
            default_bench: red_queen/games/<new_category>/<selected-def-bench>
```