#!/usr/bin/env bash
URL="https://raw.githubusercontent.com/henris-style/setup-files/master"

curl -o app.scss -l ${URL}/app.scss 
printf 'App.scss created' 

# tools
mkdir tools 

curl -o tools/_pre.scss -l ${URL}/tools/_pre.scss 
curl -o tools/_post.scss -l ${URL}/tools/_post.scss 

printf 'Tools created!' 

# typography
mkdir typography 

curl -o typography/_index.scss -l ${URL}/typography/_index.scss 
curl -o typography/_embed.scss -l ${URL}/typography/_embed.scss 
curl -o typography/_spacing.scss -l ${URL}/typography/_spacing.scss 
curl -o typography/_usage.scss -l ${URL}/typography/_usage.scss 

printf 'Typography created!' 

#components
mkdir components 

curl -o components/_index.scss -l ${URL}/components/_index.scss 

printf 'Components created!'

#colors
mkdir color 

curl -o color/_index.scss -l ${URL}/color/_index.scss 
curl -o color/_custom-colors.scss -l ${URL}/color/_custom-colors.scss 

printf 'Colors created!'
