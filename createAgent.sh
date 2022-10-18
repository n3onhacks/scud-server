#!/bin/bash

echo "What is the ssh username?"
read user
echo "What is the ssh password?"
read pass
echo "What is the server IP?"
read ip
pwd > pwd.txt
pwdV=$(cat pwd.txt)
echo "Create a AGENT password"
read agentpw

echo "$user@$ip $pass $pwdV" > agent1.txt
sed 's/ /\n/g' agent1.txt > agent2.txt

echo "openssl enc -aes-256-cbc -pbkdf2 -pass 'pass:$agentpw' -in agent2.txt  -out agent.txt" > agentT.sh
chmod 777 agentT.sh
./agentT.sh
curl bashupload.com -T agent.txt
rm agent1.txt agent2.txt agentT.sh pwd.txt agent.txt
./runner.sh
