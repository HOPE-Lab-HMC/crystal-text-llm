"""
Copyright (c) Facebook, Inc. and its affiliates.

This source code is licensed under the MIT license found in the
LICENSE file in the root directory of this source tree.
"""

conda create -n crystal-llm python=3.9
conda activate crystal-llm
conda install pip

pip install torch torchvision torchaudio
pip install accelerate peft transformers sentencepiece datasets
pip install bitsandbytes pymatgen wandb

conda deactivate
