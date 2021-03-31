FROM ubuntu:20.04

COPY . ~/Caveman2
WORKDIR ~/Caveman2
EXPOSE 9002

RUN apt update
RUN apt -y --no-install-recommends install sbcl
RUN apt -y --no-install-recommends install curl
RUN apt -y --no-install-recommends install make
RUN apt -y --no-install-recommends install ca-certificates
RUN apt -y install cl-quicklisp
RUN curl -O https://beta.quicklisp.org/quicklisp.lisp
RUN ["chmod", "+x", "./quicklisp_installation"]
RUN ["chmod", "+x", "./compile"]

RUN ./quicklisp_installation
RUN ./compile
RUN cp ./run_server /usr/bin/
CMD ["run_server"]


