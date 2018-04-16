FROM hashicorp/terraform:0.11.7
RUN  apk -v --update add \
              python \
              py-pip \
              groff \
              less \
              mailcap \
              jq \
              && \
              pip install --upgrade awscli==1.14.5 s3cmd==2.0.1 python-magic 
ENTRYPOINT ["terraform"]
