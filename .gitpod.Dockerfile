FROM gitpod/workspace-full-vnc

RUN sudo apt-get update \
 && sudo apt-get install -y libgl1 \
 && rm -rf /var/lib/apt/lists/*