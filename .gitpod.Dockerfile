FROM gitpod/workspace-full
RUN sudo apt-get update \
 && sudo apt-get install -y libgl1 ffmpeg\
 && pip install --upgrade pip \
 && pip install -U ipykernel \
 && pip install numpy \
 && pip install flowvid \
 && pip install imageio \
 && pip install wget \
 && pip install pandas \
 && pip install torch \
 && pip install torchvision \
 && pip install matplotlib \
 && pip install ipympl \
 && pip install opencv-python
