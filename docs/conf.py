# This code is part of Qiskit.
#
# (C) Copyright IBM 2022.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

#
# qiskit-neko documentation build configuration file
#

import sys, os
import subprocess

# General configuration:

project = u'qiskit-neko'
copyright = u'2022, Matthew Treinish'


# The short X.Y version.
version = '0.0.1'
# The full version, including alpha/beta/rc tags.
release = '0.0.1'

extensions = ['sphinx.ext.autodoc',
              'sphinx.ext.autosummary',
              'sphinx.ext.viewcode',
              'sphinx.ext.extlinks',
              'sphinx.ext.todo',
              'sphinx.ext.viewcode',
              'jupyter_sphinx',
              'reno.sphinxext',
              'sphinx.ext.intersphinx',
             ]
html_static_path = ['_static']
templates_path = ['_templates']
html_css_files = ['style.css', 'custom.css']

pygments_style = 'colorful'

add_module_names = False

modindex_common_prefix = ['qiskit_neko.']

todo_include_todos = True

source_suffix = ['.rst', '.md']

master_doc = 'index'

# Autosummary options
autosummary_generate = True
autosummary_generate_overwrite = False
autoclass_content = 'both'

# HTML Output Options

html_theme = 'qiskit_sphinx_theme'

html_theme_options = {
    'logo_only': False,
    'display_version': True,
    'prev_next_buttons_location': 'bottom',
    'style_external_links': True,
}

htmlhelp_basename = 'qiskit-neko'

# Intersphinx configuration
intersphinx_mapping = {
    'qiskit': ('https://qiskit.org/documentation/', None),
}
