#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/setup-files/master/src"
TARGET="$1/"

if [ -z "$1" ]
  then
    printf "\nNo folder supplied\n\n"
		exit 1
fi

curl -o ${TARGET}app.scss -l ${URL}/src/app.scss --silent
printf '\n  App.scss \e[1;34mcreated!\e[0m' 

# tools
mkdir -p ${TARGET}tools 

curl -o ${TARGET}tools.scss -l ${URL}/src/tools.scss --silent
curl -o ${TARGET}tools/_pre.scss -l ${URL}/src/tools/_pre.scss --silent
curl -o ${TARGET}tools/_post.scss -l ${URL}/src/tools/_post.scss --silent

printf '\n  Tools \e[1;34mcreated!\e[0m' 

# typography
mkdir -p ${TARGET}typography 

curl -o ${TARGET}typography/_index.scss -l ${URL}/src/typography/_index.scss --silent
curl -o ${TARGET}typography/_embed.scss -l ${URL}/src/typography/_embed.scss --silent
curl -o ${TARGET}typography/_spacing.scss -l ${URL}/src/typography/_spacing.scss --silent
curl -o ${TARGET}typography/_usage.scss -l ${URL}/src/typography/_usage.scss --silent

printf '\n  Typography \e[1;34mcreated!\e[0m' 

#components
mkdir -p ${TARGET}components 

curl -o ${TARGET}components/_index.scss -l ${URL}/src/components/_index.scss --silent

printf '\n  Components \e[1;34mcreated!\e[0m'

#colors
mkdir -p ${TARGET}color 

curl -o ${TARGET}color/_index.scss -l ${URL}/src/color/_index.scss --silent

if [ "$2" == "guyn" ]
  then
		curl -o ${TARGET}color/_custom-colors.scss -l ${URL}/src/color/_custom-colors-guyn.scss --silent
else
		curl -o ${TARGET}color/_custom-colors.scss -l ${URL}/src/color/_custom-colors.scss --silent
fi

printf '\n  Colors \e[1;34mcreated!\e[0m'
printf '\n\n'
