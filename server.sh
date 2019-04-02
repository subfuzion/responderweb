#!/bin/sh
PORT=${PORT:-8081}
socat TCP4-LISTEN:${PORT},reuseaddr,fork EXEC:/app/getversion.sh

