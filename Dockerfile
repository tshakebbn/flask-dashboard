FROM ubuntu:16.04

RUN apt-get -y update && apt-get install -y build-essential python python-dev \
python-pip nodejs

RUN pip install flask appdirs

RUN useradd -m tempuser

COPY . /home/tempuser/flask-dashboard

RUN chown -R tempuser:tempuser /home/tempuser/flask-dashboard

WORKDIR /home/tempuser/flask-dashboard

USER tempuser

RUN python setup.py build

USER root

RUN python setup.py install

USER tempuser

CMD example_flask_dashboard
