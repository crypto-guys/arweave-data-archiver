#!/bin/bash

#u=url -l=localpath -t=tag1 -T=tag2
#while getopts u:t:s:l: option
#do
#case "${option}"
#in
#u) source_url=${OPTARG};;
#l) source_file_path=${OPTARG};;
#t) tag1=${OPTARG};;
#T) tag2=${OPTARG};;
#esac
#done
#schedule_task

select_data_type(){
  echo "Please select the type of data to feed arweave"
  echo "1. HTML or TXT"
  echo "2. Image"
  echo "3. JSON"
  echo "4. IPFS"
  read data_type
}

permafeed_setup

if [[ $data_type = "1" & $is_scheduled = "1" ]]; then
  watch -n $schedule archive_single_html
  /bin/bash archive_single_html
else
  /bin/bash archive_single_image.sh
fi

if [[ $data_type = "2" & $is_scheduled = "1" ]]; then
  watch -n $schedule archive_single_image.sh
  /bin/bash archive_single_image.sh
else
  /bin/bash archive_single_image.sh
fi

if [[ $data_type = "3" & $is_scheduled = "1" ]]; then
  watch -n $schedule archive_jason_data.sh
  /bin/bash archive_jason_data.sh
else
  /bin/bash archive_jason_data.sh
fi
