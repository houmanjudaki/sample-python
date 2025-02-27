FROM python:3.8
LABEL MAINTAINER="Houman Judaki"

ENV PYTHONUNBUFFERED 1

# Set working directory
RUN mkdir /sample-python
WORKDIR /sample-python
COPY . /sample-python

# Installing requirements
ADD requirements.txt /sample-python
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN chmod -R 755 /sample-python/

CMD ["python", "./server.py"]
