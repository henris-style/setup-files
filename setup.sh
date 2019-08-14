#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/setup-files/master"
TARGET="$@/"

curl -o ${TARGET}app.scss -l ${URL}/app.scss
printf '\n  App.scss \e[1;34mcreated!\e[0m' 

# tools
mkdir -p ${TARGET}tools 

curl -o ${TARGET}tools.scss -l ${URL}/tools.scss 
curl -o ${TARGET}tools/_pre.scss -l ${URL}/tools/_pre.scss 
curl -o ${TARGET}tools/_post.scss -l ${URL}/tools/_post.scss 

printf '\n  Tools \e[1;34mcreated!\e[0m' 

# typography
mkdir -p ${TARGET}typography 

curl -o ${TARGET}typography/_index.scss -l ${URL}/typography/_index.scss 
curl -o ${TARGET}typography/_embed.scss -l ${URL}/typography/_embed.scss 
curl -o ${TARGET}typography/_spacing.scss -l ${URL}/typography/_spacing.scss 
curl -o ${TARGET}typography/_usage.scss -l ${URL}/typography/_usage.scss 

printf '\n  Typography \e[1;34mcreated!\e[0m' 

#components
mkdir -p ${TARGET}components 

curl -o ${TARGET}components/_index.scss -l ${URL}/components/_index.scss 

printf '\n  Components \e[1;34mcreated!\e[0m'

#colors
mkdir -p ${TARGET}color 

curl -o ${TARGET}color/_index.scss -l ${URL}/color/_index.scss 
curl -o ${TARGET}color/_custom-colors.scss -l ${URL}/color/_custom-colors.scss 

printf '\n  Colors \e[1;34mcreated!\e[0m'
printf '\n\t'
