FROM quay.io/coreos/clair:v2.0.3

COPY config.yaml /config/config.yaml

ENTRYPOINT []
CMD sed -i "s/localhost/$DB_HOST/" /config/config.yaml && sed -i "s/db_password/$DB_PASSWORD/" /config/config.yaml && exec /clair -config=/config/config.yaml