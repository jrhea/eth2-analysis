FROM ubuntu:19.04
LABEL Description="NS-3 Network Simulator"

RUN apt-get update


# Min req for c++ and python users
RUN apt-get install -y \
  gcc \
  g++ \
  python \
  python3 \
  python3-dev

# Min req for python dev
RUN apt-get install -y \
  python3-setuptools \
  git \
  mercurial 

# Netanim aminator
RUN apt-get install -y \
  qt5-default

# Support for ns-3-pyviz
RUN apt-get install -y \
  gir1.2-goocanvas-2.0 \
  python-gi \
  python-gi-cairo \
  python-pygraphviz \
  python3-gi \
  python3-gi-cairo \
  python3-pygraphviz \
  gir1.2-gtk-3.0 \
  ipython \
  ipython3  


# Support for MPI
RUN apt-get install -y \
  openmpi-bin \
  openmpi-common \
  openmpi-doc \
  libopenmpi-dev

# Support for bake build tool
RUN apt-get install -y \
  autoconf \
  cvs \
  bzr \
  unrar

# Debugging
RUN apt-get install -y \
  gdb \
  valgrind

# Utils
RUN apt-get install -y \
  tcpdump \
  vim \
  wget 

# DB support
RUN apt-get install -y \
  sqlite \
  sqlite3 \
  libsqlite3-dev

# XML config store
RUN apt-get install -y \
  libxml2 \
  libxml2-dev

# Python bindings
RUN apt-get install -y \
  cmake \
  libc6-dev \
  libc6-dev-i386 \
  libclang-6.0-dev \
  llvm-6.0-dev \
  automake \
  python3-pip
  
RUN apt-get install -y \
  libgtk2.0-0 \
  libgtk2.0-dev

RUN pip3 install cxxfilt matplotlib mygene networkx numpy pandas scipy six KiwiDist pygccxml pygraphviz


# boost
RUN apt-get install -y \
  libboost-signals-dev \
  libboost-filesystem-dev


# NS-3

# Create working directory
RUN mkdir -p /usr/local/ns3
WORKDIR /usr/local

# Fetch NS-3 source
RUN wget https://www.nsnam.org/releases/ns-allinone-3.30.1.tar.bz2
RUN tar -xf ns-allinone-3.30.1.tar.bz2

# Configure and compile NS-3
#RUN cd ns-allinone-3.30.1/ns-3.30.1/ && ./waf configure --enable-examples --visualize && ./waf 
RUN cd ns-allinone-3.30.1 && ./build.py --enable-examples --enable-tests

# Cleanup
RUN apt-get clean && \
  rm -rf /var/lib/apt && \
  rm /usr/local/ns-allinone-3.30.1.tar.bz2


