FROM ubuntu:latest
RUN apt-get update
RUN apt install -y nginx
RUN apt-get autoremove
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt install -y qttools5-dev
RUN apt install -y qt5-image-formats-plugins
RUN apt install -y libqt5svg5-dev
RUN apt install -y libboost-dev
RUN apt install -y libssl-dev libboost-system-dev
RUN apt install -y libboost-filesystem-dev
RUN apt install -y cmake
RUN apt install -y g++ 
RUN apt install -y libsecret-1-dev
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/*
RUN apt install software-properties-common
RUN add-apt-repository universe
RUN apt install libfuse2 -y
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN apt install -y qtcreator
RUN apt-get autoremove
CMD ["echo","Hallo"]
CMD find / -name '*CMakeLists.txt'
#WORKDIR "/home"
#protobuf@21/21.12/share/protobuf/examples"
CMD ["pwd"]
CMD ["ls"]
