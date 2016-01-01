#!/bin/bash

# This will unset and reset if $VIRTUAL_ENV exists

# If a Jupyter environment variable is set,
# then unset it
if [ -n "$JUPYTER_CONFIG_DIR" ] ; then
	unset JUPYTER_CONFIG_DIR
	echo "Unsetting Jupyter config directory environment variable"
fi

if [ -n "$JUPYTER_DATA_DIR" ] ; then
	unset JUPYTER_DATA_DIR
	echo "Unsetting Jupyter data directory envirnonment variable"
fi


# If in an active Python virtual environment,
# create Jupyter environment variables
if [ -n "$VIRTUAL_ENV" ] ; then
	mkdir -p $VIRTUAL_ENV/.jupyter
	JUPYTER_CONFIG_DIR="$VIRTUAL_ENV/.jupyter"
	export JUPYTER_CONFIG_DIR
	echo "Setting Jupyter config directory environment variable"

	mkdir -p $VIRTUAL_ENV/.jupyter_data
	JUPYTER_DATA_DIR="$VIRTUAL_ENV/.jupyter_data"
	export JUPYTER_DATA_DIR
	echo "Setting Jupyter data directory envirnonment variable"
fi

