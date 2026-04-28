FROM alpine:3.19
RUN apk add --no-cache ca-certificates
WORKDIR /app
COPY . .
RUN chmod +x ./pocketbase
EXPOSE 8090
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
