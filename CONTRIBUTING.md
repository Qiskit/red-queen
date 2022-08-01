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
