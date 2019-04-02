#!/bin/sh

url="${RESPONDER_URL:-http://localhost:8080}"

resp=$(curl -sw "%{http_code}" $url)
err=$?

body=$(echo $resp | cut -d' ' -f1)
status=$(echo $resp | cut -d' ' -f2)

if [ $err -gt 0 ]; then
    status="500"
    case $err in
        6) body="unknown host for responder ($url)" ;;
        7) body="can't connect to responder ($url)" ;;
        *) body="error connecting to responder: (curl: $err)"
    esac
fi

STATUS=$status BODY=$body envsubst < response.http

