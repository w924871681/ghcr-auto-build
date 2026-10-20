# R5 test: synthetic API key marker for OCI scanner (C05 family)
FROM alpine:latest

# Add synthetic invalid API key marker - test only, cannot authenticate
RUN mkdir -p /etc/app && echo 'api_key: CLOUDCRED_TEST_API_R5_20261020_001' > /etc/app/config.yaml

CMD ["echo", "Hello GHCR R5 test v2!"]