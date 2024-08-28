FROM jupyter/base-notebook

USER root

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g typescript ts-node tslab
RUN tslab install

USER $NB_UID