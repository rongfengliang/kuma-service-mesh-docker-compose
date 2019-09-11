FROM kong-docker-kuma-docker.bintray.io/kuma-dp:0.1.1
COPY kuma-tcp-echo /usr/bin/kuma-tcp-echo
COPY envoy /usr/bin/envoy
COPY kumactl /usr/bin/kumactl
RUN chmod +x /usr/bin/kuma-tcp-echo  && chmod +x /usr/bin/envoy && chmod +x /usr/bin/kumactl
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY config  /config
COPY service.yaml /service.yaml
ENTRYPOINT [ "/entrypoint.sh" ]