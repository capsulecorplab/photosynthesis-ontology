#!/usr/bin/env bash

# check if gradle cache exists. If not, run normal gradlew build; if so, run offline gradlew build

if [ ! -r .gradle/ ]; then
    ./gradlew build --stacktrace
else
    ./gradlew --offline --stacktrace build
fi
