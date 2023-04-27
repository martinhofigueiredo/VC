FROM gitpod/workspace-full
RUN sudo apt-get update \
 && sudo apt-get install -y libgl1 \
 && pip install --upgrade pip \
 && pip install torch \
 && pip install opencv-python
