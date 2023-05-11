#!/bin/bash
python -m pip install -r /app/requirements.txt
python -m flask --app /app/$1 run --host=0.0.0.0