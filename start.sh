#!/bin/bash

password="${JUPYTER_PASSWORD:-'password'}"

hashed_password=`python -c "from notebook.auth import passwd; print(passwd('$password'))"`

jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root --NotebookApp.password="$hashed_password"
