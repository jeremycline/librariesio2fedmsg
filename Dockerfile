FROM fedora:latest
RUN dnf update -y && \
    dnf install -y sse2fedmsg && \
    dnf clean all -y


COPY ./fedmsg.d/* /etc/fedmsg.d/

EXPOSE 9940
ENTRYPOINT /usr/bin/sse2fedmsg librariesio http://firehose.libraries.io/events
