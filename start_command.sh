#!/bin/bash

# Source the `conda.sh` file to make this particular shell session able to run the `conda` command
# For anything installed in the virtual environments created by conda to run as a web app,
# the conda environment needs to be reactivated.
. /app/conda/etc/profile.d/conda.sh

# Activate the `r-env` conda environment that was created in the build hook
conda activate r-env

# Run the jupyter notebook server, specifying the config file to use
jupyter notebook --config="~/.jupyter/jupyter_notebook_config.py"
