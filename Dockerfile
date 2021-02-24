FROM continuumio/anaconda3

# make docker use bash instead of sh
SHELL ["/bin/bash", "--login", "-c"]

RUN mkdir /geneapi
RUN mkdir /geneapi/Data

COPY . /geneapi
WORKDIR /geneapi

COPY covid19-environment.yml .

RUN conda env create -f covid19-environment.yml 
RUN conda activate covid19-genepi
##SHELL ["conda", "run", "-n", "covid19-geneapi", "/bin/bash", "-c"]


RUN bash setup.sh