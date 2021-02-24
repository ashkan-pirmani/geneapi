#!/bin/bash

####Update Krona Taxonomy
bash ~/anaconda3/envs/covid19-genepi/opt/krona/updateTaxonomy.sh 
bash ~/anaconda3/envs/covid19-genepi/opt/krona/updateAccessions.sh


####Set up Minikraken database
wget ftp://ftp.ccb.jhu.edu/pub/data/kraken2_dbs/minikraken_8GB_202003.tgz 
tar -xvf minikraken_8GB_202003.tgz
export KRAKEN2_DB_PATH="</geneapi/Data>"

####Install MEGAX
wget https://www.megasoftware.net/do_force_download/megacc_10.1.1_amd64_beta.tar.gz
tar -zxvf megacc_10.1.1_amd64_beta.tar.gz

















