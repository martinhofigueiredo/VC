FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get install texlive-full -y\
    && sudo apt-get install pandoc -y\
    && sudo pip install opencv-python\
    && sudo pip install numpy \
    && sudo pip install matplotlib \
    && sudo pip install pandas \