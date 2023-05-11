FROM python:3.11
COPY . /app
ENV ENV_1="envar 1" ENV_2='this is envar 2'
# run pip install requirements and program by filename
ENTRYPOINT ["/bin/bash", "/app/start.sh"]
CMD ["main.py" ]