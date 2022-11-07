!#/bin/sh

echo "installing system dependencies ... "


sudo apt-get install -y sox libsndfile1 ffmpeg
sudo apt-get install -y python3.8-dev
sudo apt-get -y cmake 
sudo apt-get install -y gfortran libopenblas-dev liblapack-dev
sudo apt-get install -y python3.8-venv
sudo apt-get install nvidia-docker2
sudo apt install nvidia-container-csv-cuda

echo "creating python environment .... "

sudo python3.8 -m venv nvidia

echo "activating the environment .... "

source nvidia/bin/activate

echo "installing python dependencies ... "

pip install cython
pip install pip wheel setuptools --upgrade
pip install -r requirements.txt
pip install torch==1.9.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install git+https://github.com/NVIDIA/NeMo.git@r1.12.0#egg=nemo_toolkit[all]
