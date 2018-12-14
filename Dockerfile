FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
	apt-get install -y binutils libproj-dev gdal-bin

USER $NB_UID

COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip

RUN pip install -r /tmp/requirements.txt
