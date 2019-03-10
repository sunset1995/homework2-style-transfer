# Homework 2 (Style-Transfer)

## Assign

1.  10% (Training MUNIT)
2.  20% (Inference one image in multiple style)
3.  20% (Compare with other method)
4.  30% (Assistant) 
5.  20% (Mutual evaluation)

reference:

[FastPhotoStyle](https://github.com/NVIDIA/FastPhotoStyle)

[neural-style](https://github.com/anishathalye/neural-style)

[DRIT](https://github.com/HsinYingLee/DRIT)



### Code usage

```
conda install pytorch=0.4.1 torchvision cuda91 -c pytorch;
conda install -y -c anaconda pip;
conda install -y -c anaconda pyyaml;
pip install tensorboard tensorboardX;
```

## Training
### 1. Download dataset

- `bash scripts/demo_train_edges2handbags.sh`  
- `bash scripts/demo_train_edges2shoes.sh` 
- `bash scripts/demo_train_summer2winter_yosemite256.sh` 

If you can not use ```axel``` command, change it to ```wget```.

```
axel -n 1 https://people.eecs.berkeley.edu/~taesung_park/CycleGAN/datasets/summer2winter_yosemite.zip --output=datasets/summer2winter_yosemite256/summer2winter_yosemite.zip
```
to

```
wget -N  https://people.eecs.berkeley.edu/~taesung_park/CycleGAN/datasets/summer2winter_yosemite.zip -O datasets/summer2winter_yosemite256/summer2winter_yosemite.zip
```

### 2. Train
Check out ```configs/demo_edges2handbags_folder.yaml``` for folder-based dataset organization. 

```
python train.py --config configs/edges2handbags_folder.yaml
```



## Testing

The pre-trained file is on [model](https://drive.google.com/drive/folders/10IEa7gibOWmQQuJUIUOkh-CV4cm6k8__?usp=sharing) Download the file and save it on  ```models/edges2shoes.pt```

Run the following command to translate edges to shoes

    python test.py --config configs/edges2shoes_folder.yaml --input inputs/edges2shoes_edge.jpg --output_folder results/edges2shoes --checkpoint models/edges2shoes.pt --a2b 1
    
The results are stored in `results/edges2shoes` folder. By default, it produces 10 random translation outputs.



### Results Video

This result is from original Github.
[![](results/video.jpg)](https://youtu.be/ab64TWzWn40)

### Edges to Shoes/handbags Translation

![](results/edges2shoes_handbags.jpg)

### Animal Image Translation

![](results/animal.jpg)

### Street Scene Translation

![](results/street.jpg)

### Yosemite Summer to Winter Translation (HD)

![](results/summer2winter_yosemite.jpg)

### Example-guided Image Translation

![](results/example_guided.jpg)

## Acknowledgments
Code is from [MUNIT](https://github.com/NVlabs/MUNIT). All credit goes to the authors of [MUNIT](https://arxiv.org/abs/1804.04732), Xun Huang, Ming-Yu Liu, Serge Belongie, Jan Kautz.

