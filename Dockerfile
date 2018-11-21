########################################################################################

FROM jetty
MAINTAINER Alexandre VIAL-BOUKOBZA

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends graphviz fonts-wqy-zenhei wget && \
    apt-get clean

USER jetty

ENV GRAPHVIZ_DOT=/usr/bin/dot

ARG BASE_URL=ROOT
RUN wget https://downloads.sourceforge.net/project/plantuml/plantuml.war -O /var/lib/jetty/webapps/$BASE_URL.war
