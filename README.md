# Homework 1 (Color-Transfer and Texture-Transfer)


## Training MUNIT
Under the limit of time and space constraint, we train MUNIT on `summer2winter_yosemite`  dataset only with batch size `1` and `200000` iterations. All the images are trained and tested under resolution of `256x256`.

The training loss is depicted as below figure:
| Discriminator Loss | Generator Loss |
| :--: | :--: |
| ![](demo/Dloss.png) | ![](demo/Gloss.png) |


## Inference one image in multiple styl
Some result of the trained model are shown in below:

**Summer to Winter**

| Input (summer) | Output (winter) |
| :------------: | :-------------: |
| ![](demo/s2w/i1.jpg) | ![](demo/s2w/o1.jpg) |
| ![](demo/s2w/i2.jpg) | ![](demo/s2w/o2.jpg) |
| ![](demo/s2w/i3.jpg) | ![](demo/s2w/o3.jpg) |
| ![](demo/s2w/i4.jpg) | ![](demo/s2w/o4.jpg) |


**Winter to Summer**

| Input (winter) | Output (summer) |
| :------------: | :-------------: |
| ![](demo/w2s/i1.jpg) | ![](demo/w2s/o1.jpg) |
| ![](demo/w2s/i2.jpg) | ![](demo/w2s/o2.jpg) |
| ![](demo/w2s/i3.jpg) | ![](demo/w2s/o3.jpg) |
| ![](demo/w2s/i4.jpg) | ![](demo/w2s/o4.jpg) |


**Result of each content style combination**

| Summer Content <br> Winter Style | ![](demo/grid1/w1.jpg) | ![](demo/grid1/w2.jpg) | ![](demo/grid1/w3.jpg) |
| :------------: | :-------------: | :------------: | :-------------: |
| ![](demo/grid1/s1.jpg) | ![](demo/grid1/sw11.jpg) | ![](demo/grid1/sw12.jpg) | ![](demo/grid1/sw13.jpg) |
| ![](demo/grid1/s2.jpg) | ![](demo/grid1/sw21.jpg) | ![](demo/grid1/sw22.jpg) | ![](demo/grid1/sw23.jpg) |
| ![](demo/grid1/s3.jpg) | ![](demo/grid1/sw31.jpg) | ![](demo/grid1/sw32.jpg) | ![](demo/grid1/sw33.jpg) |

| Winter Content <br> Summer Style | ![](demo/grid1/s1.jpg) | ![](demo/grid1/s2.jpg) | ![](demo/grid1/s3.jpg) |
| :------------: | :-------------: | :------------: | :-------------: |
| ![](demo/grid1/w1.jpg) | ![](demo/grid1/ws11.jpg) | ![](demo/grid1/ws12.jpg) | ![](demo/grid1/ws13.jpg) |
| ![](demo/grid1/w2.jpg) | ![](demo/grid1/ws21.jpg) | ![](demo/grid1/ws22.jpg) | ![](demo/grid1/ws23.jpg) |
| ![](demo/grid1/w3.jpg) | ![](demo/grid1/ws31.jpg) | ![](demo/grid1/ws32.jpg) | ![](demo/grid1/ws33.jpg) |


The result shown above is already convince us that the model is capable of transfering style and content between given two images. However, we do observe some failure result like:

| ![](demo/failure/f1.jpg) | ![](demo/failure/f2.jpg) | ![](demo/failure/f3.jpg) |

Some possible reasons:
- Our training time is not enough
- The random sampled style image is not suitable for the content


## Compare with other method
We show some result of neural style transfer with ImageNet pretrained vgg19 directly applied on the dataset we use.

| Summer Content <br> Winter Style | ![](demo/grid1/w1.jpg) | ![](demo/grid1/w2.jpg) | ![](demo/grid1/w3.jpg) |
| :------------: | :-------------: | :------------: | :-------------: |
| ![](demo/grid1/s1.jpg) | ![](demo/ns_sw11.jpg) | ![](demo/ns_sw12.jpg) | ![](demo/ns_sw13.jpg) |
| ![](demo/grid1/s2.jpg) | ![](demo/ns_sw21.jpg) | ![](demo/ns_sw22.jpg) | ![](demo/ns_sw23.jpg) |
| ![](demo/grid1/s3.jpg) | ![](demo/ns_sw31.jpg) | ![](demo/ns_sw32.jpg) | ![](demo/ns_sw33.jpg) |

| Winter Content <br> Summer Style | ![](demo/grid1/s1.jpg) | ![](demo/grid1/s2.jpg) | ![](demo/grid1/s3.jpg) |
| :------------: | :-------------: | :------------: | :-------------: |
| ![](demo/grid1/w1.jpg) | ![](demo/ns_ws11.jpg) | ![](demo/ns_ws12.jpg) | ![](demo/ns_ws13.jpg) |
| ![](demo/grid1/w2.jpg) | ![](demo/ns_ws21.jpg) | ![](demo/ns_ws22.jpg) | ![](demo/ns_ws23.jpg) |
| ![](demo/grid1/w3.jpg) | ![](demo/ns_ws31.jpg) | ![](demo/ns_ws32.jpg) | ![](demo/ns_ws33.jpg) |

As the model is only pre-trained on ImageNet, the result is not as well as expected with artist painting like result. A clever choice for such pre-trianed setting is to use artist style to another arthis style transfer while realistic scene is not a good choice for such setting.
