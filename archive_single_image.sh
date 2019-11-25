#!/bin/bash
source ./util.sh

# if user choose local ask for path else ask for url
# fi closes the if statement
if [[ $sourcec_location = "1" ]]; then
  save_image_to_arweave "$source_file_path"
else
  save_image_to_arweave "$source_url"
fi
