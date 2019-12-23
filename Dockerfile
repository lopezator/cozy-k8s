#FROM gcr.io/distroless/static@sha256:48e0d165f07d499c02732d924e84efbc73df8021b12c24940e18a9306589430e
FROM golang:1.13
ADD cozy-stack /usr/local/bin/cozy-stack
EXPOSE 8080 6060
CMD ["cozy-stack", "serve", "--couchdb-url", "http://cozy-stack-couch:5984", "--allow-root"]