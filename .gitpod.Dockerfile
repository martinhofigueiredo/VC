FROM gitpod/workspace-full
RUN sudo apt-get update \
 && sudo apt-get install -y libgl1 \
 && pip install --upgrade pip \
 && pip install numpy \
 && pip install torch \
 && pip install torchvision \
 && pip install matplotlib \
 && pip install ipympl \
 && pip install opencv-python
