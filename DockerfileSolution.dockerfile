FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3.9 python3.9-pip
COPY requirements.txt .
RUN pip3.9 install -r requirements.txt
COPY app.py .
CMD ["python3.9", "app.py"]