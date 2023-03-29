FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN apt-get update
RUN pip install --upgrade pip
RUN pip install numpy
RUN pip install matplotlib
RUN pip install pandas

RUN apt-get update && apt-get install -y python3-opencv
RUN pip install opencv-python
