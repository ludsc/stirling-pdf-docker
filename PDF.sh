#/bin/bash

cd ~/stirling-pdf
docker compose up -d
sleep 25 
xdg-open http://localhost:8080
