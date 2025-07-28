#!/bin/sh
set -e

function print_error() {
    printf "\033[1;31m%s\033[0m" "$1"
}
function print_info() {
    printf "\033[1;32m%s\033[0m\n" "$1"
}

function exitf(){
    print_error "$1"
    exit 1
}


if [ "$1" == "--production" ]; then
   cp ".env" "wrangler.toml" || exitf "No .env"
elif [ "$1" == "--development" ]; then
   cp ".env.development" "wrangler.toml" || exitf "No .env.development"
else
   echo ""
   echo "Example:"
   echo "============================================================================"
   echo ""
   cat "./.env.example.txt" && echo ""
   echo ""
   echo "============================================================================"
   echo ""
   exitf "No argument: --production | --development"
fi
