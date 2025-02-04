# FROM nvidia/cuda
FROM 763104351884.dkr.ecr.us-east-1.amazonaws.com/tensorflow-training:2.12.0-cpu-py310-ubuntu20.04-ec2

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    python3.8 python3-pip python3-setuptools python3-dev

WORKDIR /src

COPY requirements.txt ./requirements.txt

RUN python3.8 -m pip install --no-cache-dir -r requirements.txt

COPY . /src

