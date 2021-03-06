#!/bin/bash

# The assumption is that the vocabulary file has been named
#

# Unzip vocabulary

cd /root/ohdsi/vocabulary
unzip vocabulary_download_v5.zip

# Run java file to extract out CPT codes
bash ./cpt.sh

# Build JSON
cd ~/ohdsi
python3.6 ~/Git/CommonDataModelMapper/omop_cdm/utility_programs/generate_code_lookup_json.py -c ~/ohdsi/config/ps_2_cdm_config.json