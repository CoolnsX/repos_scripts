#!/bin/sh

ajax_url='https://gogoplay.io/encrypt-ajax.php'


#get the id from the url
video_id=$(echo "$*" | cut -d\? -f2 | cut -d\& -f1 | sed 's/id=//g')

#construct ajax parameters
secret_key='3235373436353338353932393338333936373634363632383739383333323838'
iv='34323036393133333738303038313335'
ajax=$(echo -n -e $video_id | openssl enc -aes256  -K $secret_key -iv $iv -a)

#send the request to the ajax url
curl -H 'x-requested-with:XMLHttpRequest' "$ajax_url" -d "id=$ajax" -d "time=69420691337800813569" | jq -r '.source[].file'
