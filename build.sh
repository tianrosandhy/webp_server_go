#!/bin/bash
if [ -z ${1} ]; then
  echo "Need version param";
  exit 1;
else
  ver=$1;
fi
builddate="$(date '+%Y-%m-%d_%H:%M:%S')"
echo $builddate

docker build -t webp-server-go:latest --build-arg VER=$ver --build-arg BUILDDATE=$builddate .
docker system prune -f