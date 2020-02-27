FROM ubuntu:20.04

RUN apt-get update -y && apt-get install -y libstdc++-10-dev wget xz-utils
RUN mkdir /root/temp && cd /root/temp && wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0-rc2/clang+llvm-10.0.0-rc2-x86_64-linux-gnu-ubuntu-18.04.tar.xz && tar xf clang* && cp -R clang*/* /usr/local/
RUN cd /root/ && rm -rf temp
