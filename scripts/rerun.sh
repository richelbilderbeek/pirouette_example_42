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
#SBATCH --job-name=pirex42
#SBATCH --output=example_42.log
#
rm -rf example_42
rm *.png
time Rscript example_42.R
zip -r pirouette_example_42.zip example_42 example_42.R scripts *.png

