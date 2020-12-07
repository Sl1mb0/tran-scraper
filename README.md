# tran_scraper

Linguistics project to analyze question type & frequency in transcripts located on web pages using a combination of BASH and VIM scripts.

More specifically, the script accepts two arguments. 

$1 = 'URL'
$2 = 'match string'
  
It scrapes the web page located at the addres of the URL, and removes gunky html text.
It then removes all lines that do not contain the 'match string'.

For example, say we want to only analyze the questions that `Joe Schmoe` asks. 
The script would remove all lines not containing `Joe Schome`; thus the only lines remaining in the transcript being questions asked by `Joe Schmoe`.

One can the individually read and analyze the transcript, adding a 'tag' to each question based on what type they think it is.
After 'tagging' the transctript, `./type_count.sh` calculates question-type frequency based on the 'tags'. 

I've included an example of what a 'tagged' version of the transcript must look like. 

I would like to implement lexical analysis to compute question-type frequency without having to actually read through and analyze the transcript.


