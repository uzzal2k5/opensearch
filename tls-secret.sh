#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout opensearch.key -out opensearch.crt -subj "/CN=opensearch/O=opensearch"
kubectl create secret tls tls-secret --key opensearch.key --cert opensearch.crt
