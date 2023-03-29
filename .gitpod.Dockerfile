FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && pip install --upgrade pip \
    && sudo pip install opencv-python\
    && sudo pip install numpy \
    && sudo pip install matplotlib \
    && sudo pip install pandas \
