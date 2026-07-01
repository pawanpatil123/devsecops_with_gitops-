#!/bin/bash

echo "Updating backend .env.docker..."

FILE="../backend/.env.docker"

if [ ! -f "$FILE" ]; then
    echo "ERROR: $FILE not found!"
    exit 1
fi

sed -i 's|^FRONTEND_URL=.*|FRONTEND_URL="http://localhost:31000"|' "$FILE"

echo "Backend .env.docker updated successfully."

cat "$FILE"