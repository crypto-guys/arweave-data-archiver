#!/bin/bash
source util.sh

input_the_ipfs_path

function get_image_from_ipfs() {
  ipfs get --output $result $path 
}

# options when getting ipfs file
# --output
# where to put the data
# --archive
# uses tar
# --compress
# uses gzip
# --compression-level
#
