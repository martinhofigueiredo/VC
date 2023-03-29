FROM gitpod/workspace-full

RUN sudo apt-get install -y python3-opencv
RUN pip install opencv-python
