#!/bin/bash

# This is a script I wrote to get only the necessary text from the web page containing the transcript.
# It gets a copy of the file, then removes a lot of gunky html. 
# It then removes all lines that do not contain a question from dispatch.

# get the webpage, store the output in transcript.txt
curl $1 > ~/Desktop/LNG_334/data_analysis/transcript.txt

# remove all the gunk
sed -i '' '1,141d' ./transcript.txt
sed -i '' '171d' ./transcript.txt
sed -i '' 's/<[^.]>//g'  ./transcript.txt

# delete all lines that do not contain '$2'.
sed -i '' '/.*$2.*/!d' ./transcript.txt

# run 'get_questions' to remove everything that is not a question
vim -c ":source ./get_questions.vim" ./transcript.txt
