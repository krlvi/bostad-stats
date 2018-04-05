#!/bin/bash
lein uberjar
aws lambda update-function-code \
    --region eu-west-1 \
    --function-name bostad-stats \
    --zip-file fileb://$(pwd)/target/uberjar/bostad-stats-0.1.0-SNAPSHOT-standalone.jar
