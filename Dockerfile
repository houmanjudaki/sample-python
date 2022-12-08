FROM python:3.8
LABEL MAINTAINER="Houman Judaki"

ENV PYTHONUNBUFFERED 1

# Set working directory
RUN mkdir /sample-python
WORKDIR /sample-python
COPY . /sample-python

# Installing requirements
ADD requirements/requirements.txt /sample-python
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


CMD ["python", "./server.py"]
