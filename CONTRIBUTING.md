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

In the case that a new type of benchmark category is implemented, two new actions 
containing the directory of the python file that will be run with pytest should be 
added to `.github/workflows/main.yml`.

- A new action called `Get changes in <new_category>` should be added after the latest 
test that was included there. This action uses [changed-files](https://github.com/tj-actions/changed-files). It should follow the format below. *The `*.py` suffix makes sure that only the 
python files will be considered.*

```yml
    - name: Get changes in <new_category>
        id: changes-<new_category>
        uses: tj-actions/changed-files@v24.1
        with:
          files: |
            red_queen/games/<new_category>/*py
```

- A new action called `Test <new_category>` should be added. This action will run a bash
script that will run pytest on your files. This script will also make sure any further 
changes made to `__init__.py` will be prooperly tested. For this, a test will also have to 
be selected `<selected_test>` to be executed in these cases. The action should follow the 
following formatting:

```yml
    - name: Test <new_category>
        run: |
          if [[ "${{steps.changes-<new_category>.outputs.all_changed_and_modified_files}}" != "" ]]; then
            if [[ "${{steps.changes-<new_category>.outputs.all_changed_and_modified_files}}" == *"red_queen/games/<new_category>/__init__.py"* ]]; then
                no_init=${${{steps.changes-<new_category>.outputs.all_changed_and_modified_files}}//"red_queen/games/<new_category>/__init__.py"/}
                echo "$no_init"
                if [[ "$no_init" == "" ]]; then
                    pytest red_queen/games/<new_category>/<selected_test>.py -n 2 --verbose --store
                else
                    pytest "$no_init" -n 2 --verbose --store
                fi
            else
              pytest ${{steps.changes-<new_category>.outputs.all_changed_and_modified_files}} -n 2 --verbose --store
            fi
          fi 
```