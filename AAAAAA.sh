#!/bin/bash

git clone https://github.com/harubaru/gpt-neox
cd gpt-neox
sudo python ./megatron/fused_kernels/setup.py install
pip3 install -r requirements/requirements-flashattention.txt
pip3 install -r requirements/requirements-onebitadam.txt
pip3 install bitsandbytes
wget https://the-eye.eu/public/AI/models/GPT-NeoX-20B/slim_weights/20B_tokenizer.json
git clone https://github.com/EleutherAI/best-download
cd best-download
pip3 install -r requirements-dev.txt
cd ..
pip3 install best-download
