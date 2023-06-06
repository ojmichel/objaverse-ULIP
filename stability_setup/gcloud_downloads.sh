#!/bin/bash
cd data
gsutil -m cp -r \
  "gs://sfr-ulip-code-release-research/initialize_models" \
  "gs://sfr-ulip-code-release-research/modelnet40_normal_resampled" \
  "gs://sfr-ulip-code-release-research/pretrained_models" \
  .
cd ../
wget https://mattd-public.s3.us-west-2.amazonaws.com/objaverse-xl/matched-pc-save-uids.json