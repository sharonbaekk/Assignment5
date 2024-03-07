
FROM alpine AS builder
WORKDIR /app
COPY data.txt /app/data.txt


FROM fedora AS final
WORKDIR /
COPY --from=builder /app/data.txt /data.txt

