#!/bin/bash

# This the second script necessary for collecting all of the necessary data.
# In the transcript file I have gone through and tagged each question with '//type'
# each usage of 'grep' goes through and counts the occurrences of each tag in the file
# The output is the percentage of each type of question asked throughout the transcript

file="./tagged_transcript.txt"

yes_no=$(grep -c '\/\/yes\/no' $file)
declarative=$(grep -c '\/\/declarative' $file)
imperative=$(grep -c '\/\/imperative' $file)
tag=$(grep -c '\/\/tag' $file)
wh=$(grep -c '\/\/wh-' $file)
alt=$(grep -c '\/\/alt' $file)

question_count=$(wc -l < ./transcript.txt)

echo "Of all questions asked"
echo "----------------------"
printf "`echo "scale=3; $yes_no / $question_count * 100" | bc` `echo percent were yes/no`\n"
printf "`echo "scale=3; $declarative / $question_count * 100" | bc` `echo percent were declarative`\n"
printf "`echo "scale=3; $imperative / $question_count * 100" | bc` `echo percent were imperative`\n"
printf "`echo "scale=3 ; $tag / $question_count * 100" | bc` `echo percent were tag`\n"
printf "`echo "scale=3 ; $wh / $question_count * 100" | bc` `echo percent were wh-`\n"
printf "`echo "scale=3 ; $alt / $question_count * 100" | bc` `echo percent were alt`\n"
