#!/bin/bash

main () {
    init
    check
}

init () {
    echo "This script installs my commonly used packages for express projects globally"
    echo "NOTE: pnpm must be installed for this to work. You will next be asked if PNPM is installed. If not, answer with 'n' and install it before proceeding with this script."
    echo "NOTE: also assumed you are on a mac with homebrew"
    brew update
    brew upgrade
    brew doctor
    brew install node
    echo "brew updates complete"
}

check () {
    read -p "Do you have 'PNPM' installed? Enter 'y' to continue:  " ans
    echo "you responded $ans"
    if [ $ans == 'y' ]; then
        echo "Success. Running global installations"
        pause
        install
        pnpm init
    fi
    exit
}

install () {
    pnpm add -g express-generator@4
    pnpm add -g nodemon
    pnpm add -g ts-node
    pnpm add -g prettier
    pnpm add -g typescript
}

# run program
main
