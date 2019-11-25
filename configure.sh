#/bin/bash

# make directory to store temporary files
mkdir ./tmp

# promt user to paste arweave wallet file and save it to jwk.json
echo "Please paste the contents of your arweave wallet key file"
read walletkey
echo $walletkey > jwk.json
#openssl enc -aes-256-cbc -salt -in jwk.json -out jwk.json.enc
#rm jwk.json


# accept user input for keyword and save to keyword.txt
# echo "Please enter only one keyword"
# read keyword
# echo $keyword > keyword.txt

# accept user input in hours only whole numbers accepted save to hours.txt
# echo "Please enter the run frequency in number of hours whole numbers only"
# read frequency
# echo $frequency > hours.txt

# accept user input for api key save to apikey.txt
# echo "Please enter your api key"
# read apikey
# echo $apikey > apikey.txt

# accept user input for # of articles save to articlecount.txt
# echo "Please enter the maximum number of articles to retrieve per run"
# read articlecount
# echo $articlecount > articlecount.txt

# schedule crontab to run main script hourly and output to logfile
# crontab -l | { cat; echo "0 * * * * ./extracturls.sh >> transaction.log"; } | crontab -
