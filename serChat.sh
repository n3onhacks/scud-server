#!/bin/bash

sleep .25
cat chat.txt >> chat1.txt
cat chat1.txt | sort -u > outgoing/chat.txt


exec $0
