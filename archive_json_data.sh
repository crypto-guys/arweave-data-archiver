#!/bin/bash
# stores json data to arweave can schedule this script to run via cron or watch -x file
source util.sh

input_tags
input_remote_url

# contact url for data
result=$(wget -qO- "$source_url" | base64)

cat $result | curl -X POST http://localhost:1908/raw -H "x-tag-content-type: text/html" -H "$tag1" -H "$tag2" -d @- ; done
