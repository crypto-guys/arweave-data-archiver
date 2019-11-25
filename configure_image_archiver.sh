#!/bin/bash
source util.sh


input_tags
input_file_source
if [[ $source_location = "1" ]]; then
  input_file_path
else
  input_remote_url
fi


/bin/bash archive_single_image.sh
