# Observability
## Старт компонентов в docker

1. Mimir
*docker run -d   --name=mimir   --hostname=mimir   -v /etc/mimir.yaml:/etc/mimir.yaml   -v mimir:/data  -p 9009:9009 grafana/mimir:latest   -config.file=/etc/mimir.yaml*
2. MinIO
*docker run -d -p 9000:9000    -p 9001:9001    --name minio    -v ~/minio/data:/data    -e "MINIO_ROOT_USER=ROOTNAME"    -e "MINIO_ROOT_PASSWORD=CHANGEME123"    quay.io/minio/minio server /data --console-address ":9001"*
