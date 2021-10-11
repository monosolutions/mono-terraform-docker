FROM hashicorp/terraform:latest
RUN  apk -v --update add \
              python3 \
              py-pip \
              groff \
              less \
              mailcap \
              jq \
              && \
              pip install --upgrade awscli==1.17.3 s3cmd==2.0.1 python-magic 
ENTRYPOINT ["terraform"]