#!/bin/bash

# input run frequency
schedule_task(){
    echo "Would you like to schedule this task?"
    echo "1. Yes"
    echo "2. No"
    read is_scheduled
}

input_run_schedule(){
  echo "Please enter the run frequency in seconds 3600 = 1 hour"
  read shedule
}
# allow user to input tags
# replace with -arguments
input_tags() {
  echo "Please specify your first tag"
  read tag1
  echo "Please specify your second tag"
  read tag2
}

# ask user for local file location
input_file_path() {
  echo "Please specify the local path"
  read source_file_path
}

# accept user input for url
input_remote_url() {
  echo "Please specify the remote url"
  read source_url
}

save_image_to_arweave() {
  if [[ $source_location = "1" ]]; then
    cat $source_file_path | curl -X POST http://localhost:1908/raw -H "x-tag-content-type: text/html" -H "$tag1" -H "$tag2" -d @-
  else
    curl $source_url | curl -X POST http://localhost:1908/raw -H "x-tag-content-type: text/html" -H "$tag1" -H "$tag2" -d @-
  fi
}

post_single_html() {
  echo "This is source location $source_location"
  if [[ $source_location = "1" ]]; then
    input_file_path
    echo "This is source file path $source_file_path"
    cat $source_file_path | curl -s -X POST http://localhost:1908/raw -H "x-tag-content-type: text/html" -H "$tag1" -H "$tag2" -d @-
  else
    input_remote_url
    echo "This is source url $source_url"
    curl $source_url | curl -s -X POST http://localhost:1908/raw -H "x-tag-content-type: text/html" -H "$tag1" -H "$tag2" -d @-
  fi
}

#######################
# Wallet Functions
#######################
encrypt_wallet() {

}

decrypt_wallet() {
  useable_wallet=$(openssl enc -aes-256-cbc -d -in jwk.json.enc)
}

#######################
# IPFS Functions
#######################
input_the_ipfs_path() {
  echo "Please enter the file hash"
  read hash
}
