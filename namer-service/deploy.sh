#!/bin/sh
docker stop names-production
docker run -d -p 5000:5000 --name names-production namer-service
