FROM python:3.11
COPY . /app
ENV NAME="DEFAULT_NAME"
# ENV NAME="DEFAULT_NAME" HOSTNAME="HOSTNAME"
# runs pip install requirements and program by filename
ENTRYPOINT ["/bin/bash", "/app/start.sh"]
CMD ["main.py"]