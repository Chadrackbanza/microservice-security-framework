FROM alpine:3.12
RUN apk add --no-cache curl
CMD ["echo", "Hello microservice"]
