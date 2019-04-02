FROM alpine/socat
RUN apk add --no-cache curl gettext
WORKDIR /app
COPY server.sh getversion.sh response.http /app/
ENV PORT ${PORT}
ENTRYPOINT [ "/app/server.sh" ]

