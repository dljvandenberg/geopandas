FROM jupyter/datascience-notebook

RUN apt-get update && \
	apt-get install -y binutils libproj-dev gdal-bin

RUN mkdir -p /opt/geopandas/

COPY requirements.txt /opt/geopandas/requirements.txt

RUN pip install --upgrade pip

RUN pip install -r /opt/geopandas/requirements.txt
