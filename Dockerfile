FROM ubuntu:16.04

RUN apt-get -y update && apt-get install -y build-essential python python-dev \
python-pip nodejs

RUN pip install flask

RUN useradd -m tempuser

USER tempuser

COPY . /home/tempuser

WORKDIR /home/tempuser

CMD python setup.py build

CMD python setup.py install

CMD example_flask_dashboard