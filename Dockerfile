FROM sebasguts/singularbinder:20171016

MAINTAINER Sebastian Gutsche <sebastian.gutsche@gmail.com>

ENV NB_USER singular
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID}:${NB_GID} ${HOME}
USER ${NB_USER}
