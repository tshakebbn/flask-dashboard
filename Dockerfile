FROM ubuntu:16.04

RUN apt-get -y update && apt-get install -y build-essential python python-dev \
python-pip

RUN pip install flask
