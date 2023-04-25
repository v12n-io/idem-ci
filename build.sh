#!/bin/sh
VERSION=$(<VERSION)
docker build . -t v12nio/idem-ci:latest -t v12nio/idem-ci:v$VERSION --build-arg VERSION=$VERSION
docker login --username $DOCKERUSER --password $DOCKERPASS
docker push v12nio/idem-ci:latest
docker push v12nio/idem-ci:v$VERSION