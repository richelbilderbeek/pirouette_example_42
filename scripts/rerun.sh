#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex32
#SBATCH --output=example_32.log
#
rm -rf example_32
rm *.png
time Rscript example_32.R
zip -r pirouette_example_32.zip example_32 example_32.R scripts *.png

