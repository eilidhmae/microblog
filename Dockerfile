FROM golang:1.23.4-alpine3.21 as BUILDER
WORKDIR /src/
COPY . .
RUN go build -o mb

FROM alpine:3.21

EXPOSE 3000

RUN mkdir -p /opt/bin

COPY --from=BUILDER /src/mb /opt/bin/mb

ENTRYPOINT ["/opt/bin/mb"]
