# scripts
Catch-all for scripts

## jupyter-setup.sh
Bash shell script for handling setting of [Jupyter Notebook](http://jupyter.org/) environment variables.

To be used in an active Python virtual environment. Add to the end of the activation script and at the end of the deactivation code suite.

Environent Variables Handled:
* JUPYTER_CONFIG_DIR
* JUPYTER_DATA_DIR

Creates the following directories if they do not exist:
* $VIRTUAL_ENV/.jupyter
* $VIRTUAL_ENV/.jupyter_data

Tested using Jupyter 4.0.6 under Python 3.5.1.


