FROM docker.repos.balad.ir/python:3.8
ENV PYTHONUNBUFFERED 1

RUN apt-get update --fix-missing && \
    apt-get upgrade -y

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt && \
    rm /tmp/requirements.txt

ADD machine_learning /opt/ml
WORKDIR /opt/ml

CMD ["bash", "docker-entrypoint.sh"]
