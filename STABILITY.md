# Instructions for running on Stability

Here are the instructions for setting this up on the stability cluster.

## Cloning the repo

```bash
git clone https://github.com/allenai/objaverse-ULIP.git
cd objaverse-ULIP/ULIP
```

## Setting up the dependencies

To create a new conda environment called `ulip`, activate it, and install the dependencies needed, please run:

```bash
./stability_setup/setup_conda.sh
```

## Downloading other stuff

There are some model checkpoints and data that need to be downloaded. Salesforce hosts these in gcloud, so the gcloud CLI is needed for this script.

```bash
./stability_setup/gcloud_download.sh
```

After running this, the `.data` dir should looks like this:

```bash
/initialize_models
/modelnet40_normal_resampled
/pretrained_models
dataset_3d.py
dataset_catalog.json
labels.json
ModelNet40.yaml
ObjaverseXL.yaml
ShapeNet-55.yaml
templates.json
```

## Running the main experiment

```bash
. scripts/pretrain_pointbert_objxl.sh
```

## Running a debug experiment
The following command is helpful if you need to debug things. It runs on only one gpu and has no workers so you can use pdb while running it. It reduces the train dset size to 50 and  also does not log to wandb.

```bash
. scripts/pretrain_pointbert_objxl.sh
```

## Misce
