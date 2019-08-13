#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/setup-files/master"

curl -o app.scss -l ${URL}/app.scss
printf '\nApp.scss  \e[1;34mcreated!.\e[0m' 

# tools
mkdir tools 

curl -o tools.scss -l ${URL}/tools.scss 
curl -o tools/_pre.scss -l ${URL}/tools/_pre.scss 
curl -o tools/_post.scss -l ${URL}/tools/_post.scss 

printf '\n\tTools  \e[1;34mcreated!.\e[0m' 

# typography
mkdir typography 

curl -o typography/_index.scss -l ${URL}/typography/_index.scss 
curl -o typography/_embed.scss -l ${URL}/typography/_embed.scss 
curl -o typography/_spacing.scss -l ${URL}/typography/_spacing.scss 
curl -o typography/_usage.scss -l ${URL}/typography/_usage.scss 

printf '\n\tTypography  \e[1;34mcreated!.\e[0m' 

#components
mkdir components 

curl -o components/_index.scss -l ${URL}/components/_index.scss 

printf '\n\tComponents \e[1;34mcreated!.\e[0m'

#colors
mkdir color 

curl -o color/_index.scss -l ${URL}/color/_index.scss 
curl -o color/_custom-colors.scss -l ${URL}/color/_custom-colors.scss 

printf '\n\tColors \e[1;34mcreated!.\e[0m'
printf '\n\t'
