FROM python:3.11
WORKDIR /app
COPY . .
ENV NAME="DEFAULT_NAME"
RUN pip install -r /app/requirements.txt
# ENV NAME="DEFAULT_NAME" HOSTNAME="HOSTNAME"
# runs pip install requirements and program by filename
ENTRYPOINT ["python", "main.py"]
CMD ["prod"]