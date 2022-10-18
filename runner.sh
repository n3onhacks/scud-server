#!/bin/bash
touch chat.txt
touch outgoing/chat.txt
./serReset.sh &
./serChat.sh
