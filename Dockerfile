# Pull base image
FROM ubuntu:14.04

# Set debian frontend to noninteractive
ENV DEBIAN_FRONTEND noninteractive

# apt-get update and install java-7
RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:webupd8team/java && \
    apt-get update -y && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get install -y oracle-java8-installer

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

# Default command
CMD ["bash"]
