!#/bin/sh

echo "installing system dependencies ... "


sudo apt-get install sox libsndfile1 ffmpeg
sudo apt-get install python3.8-dev
sudo apt-get cmake
sudo apt-get install gfortran libopenblas-dev liblapack-dev

echo "creating python environment .... "

python3.8 -m venv nvidia

echo "installing python dependencies ... "

pip install cython
pip install pip wheel setuptools --upgrade
pip install -r requirements.txt
pip install torch==1.9.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install git+https://github.com/NVIDIA/NeMo.git@r1.12.0#egg=nemo_toolkit[all]
