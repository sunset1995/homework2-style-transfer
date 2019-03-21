#!/bin/bash
rm datasets/summer2winter_yosemite256 -p
mkdir datasets/summer2winter_yosemite256 -p
wget -N  https://people.eecs.berkeley.edu/~taesung_park/CycleGAN/datasets/summer2winter_yosemite.zip -O datasets/summer2winter_yosemite256/summer2winter_yosemite.zip
unzip datasets/summer2winter_yosemite256/summer2winter_yosemite.zip -d datasets/summer2winter_yosemite256
# python train.py --config configs/summer2winter_yosemite256_folder.yaml
