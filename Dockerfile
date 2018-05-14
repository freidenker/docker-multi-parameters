FROM microsoft/azure-cli:latest

RUN az --version && which az && \
    mkdir -p /opt/work

COPY entrypoint.sh /

ENTRYPOINT [ "/bin/bash", "-c", "/entrypoint.sh \"$@\"", "--" ]
