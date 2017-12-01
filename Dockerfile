FROM bmeng/hello-openshift

RUN rm -rf /tmp/* || true
#RUN echo 'export SSL_CERT_DIR=/etc/ssl/certs' >> /etc/profile
ADD ca.pem /tmp/
ADD ws /usr/bin/ws

EXPOSE 8080 8888
ENTRYPOINT ["/hello-openshift"]
