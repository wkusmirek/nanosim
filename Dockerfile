FROM ubuntu:16.04
MAINTAINER kusmirekwiktor@gmail.com

RUN apt-get update && apt-get install --yes last-align python-numpy

RUN apt-get install -y git

RUN git clone https://github.com/bcgsc/NanoSim.git

RUN apt-get install -y python-pip

RUN apt-get install -y zlib1g-dev libbz2-dev liblzma-dev

RUN pip install -r /NanoSim/requirements.txt

ENV PATH="/NanoSim/src/:${PATH}"
