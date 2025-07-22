# RP-PGD & RP-PGD++
A Region-and-Prototype-Based Adversarial Attack to Enhance the Robustness of Segmentation Models

![Attack Pipeline of RP-PGD](fig/fig-arch.png)

This is the official project of our work AAAI work RP-PGD ([paper](https://ojs.aaai.org/index.php/AAAI/article/view/33122)) and its enhanced version RP-PGD++ (under review).

# Project Setup
To install the environment of the project, please install Python 3 and PyTorch with Anaconda:
```shell
conda create --name rppgd python=3.8
conda activate rppgd
```

Then clone this repo and install the corresonding requirements:
```shell
git clone --recursive
cd RP-PGD
pip install -r requirements.txt
```

