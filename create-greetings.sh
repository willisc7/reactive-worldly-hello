#!/bin/bash
#
# This script takes the app URL as the commandline parameter, and posts
# to the rest endpoint to create a set of greetings.
#

if [ -z "$1" ]; then
  echo "usage: $0 \<app URL (eg. http://my-app.cfapps.io)\>"
  exit
fi

url=$1



curl -i -X POST -H "Content-Type:application/json" -d "{ \"language\" : \"english\", \"text\" : \"Hello\" }" $url/greetings

curl -i -X POST -H "Content-Type:application/json" -d "{ \"language\" : \"spanish\", \"text\" : \"Hola\" }" $url/greetings

curl -i -X POST -H "Content-Type:application/json" -d "{ \"language\" : \"french\", \"text\" : \"Bonjour\" }" $url/greetings
