FROM continuumio/anaconda3


#Replace "geneapi" with your desired name
RUN mkdir /geneapi
RUN mkdir /geneapi/Data

COPY . /geneapi
WORKDIR /geneapi

COPY covid19-environment.yml .

RUN conda env create -f covid19-environment.yml 


# Pull the environment name out of the environment.yml
RUN echo "source activate $(head -1 /geneapi/covid19-environment.yml | cut -d' ' -f2)" > ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 /geneapi/covid19-environment.yml | cut -d' ' -f2)/bin:$PATH


#################You have to change setup path###############################
######bash /opt/conda/envs/covid19-genepi/opt/krona/updateTaxonomy.sh #######
######bash /opt/conda/envs/covid19-genepi/opt/krona/updateAccessions.sh #####
#############################################################################
RUN bash setup.sh

