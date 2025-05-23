FROM alpine:latest

# Port tanımı
ENV PORT=8090

# Bağımlılıkları kur
RUN apk --no-cache add ca-certificates tzdata

# Çalışma dizini
WORKDIR /app

# Dosyaları kopyala
COPY pocketbase /app/pocketbase
COPY start.sh /app/start.sh

# İzin ver
RUN chmod +x /app/pocketbase /app/start.sh

# Başlat
CMD ["/app/start.sh"]
