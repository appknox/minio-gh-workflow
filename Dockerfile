FROM minio/minio 

LABEL org.opencontainers.image.source="https://github.com/hedge10/minio-gh-workflow"

CMD [ "server", "/data", "--address=0.0.0.0:9000", "--console-address=0.0.0.0:9001" ]
