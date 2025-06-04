# Dockerfile
FROM golang:1.21 as builder

WORKDIR /app
COPY . .
RUN go build -o app .

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/app .
EXPOSE 8080
CMD ["./app"]

