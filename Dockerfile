FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
	apt-get install -y binutils libproj-dev gdal-bin

USER $NB_UID

COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip

RUN pip install -r /tmp/requirements.txt

RUN jupyter contrib nbextension install --user

RUN jupyter-nbextension install rise --py --sys-prefix && \
        jupyter-nbextension enable rise --py --sys-prefix
