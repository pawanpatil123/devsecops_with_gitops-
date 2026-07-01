#!/bin/bash

echo "Updating frontend .env.docker..."

FILE="../frontend/.env.docker"

if [ ! -f "$FILE" ]; then
    echo "ERROR: $FILE not found!"
    exit 1
fi

sed -i 's|^VITE_API_PATH=.*|VITE_API_PATH="http://localhost:31100"|' "$FILE"

echo "Frontend .env.docker updated successfully."

cat "$FILE"