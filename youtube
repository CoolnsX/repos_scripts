#!/bin/sh


full_video()
{
	video=$1
	printf "$video"
	youtube-dl -f best "$video"

}

part_video()
{
	video=$1
	printf "Enter Starting Point(hh:mm:ss):"
	read start
	printf "Enter Duration:"
	read dur
	ffmpeg -i $(youtube-dl -f best --get-url "$video") -ss $start -t $dur $HOME/Videos/$(date +%s).mp4
}

printf "Input Youtube link :"
read x
printf "Download>>\n[f]Full video\n[p]Part of video"
printf "\nEnter choice:"
read choice
case $choice in
	f)
		full_video "$x";;
	p)
		part_video "$x";;
	q)
		break;;
esac
