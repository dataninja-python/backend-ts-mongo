#!/bin/bash
# initialize before installing
pnpm install

# install
pnpm add chalk@^4.1.2
pnpm add dotenv
pnpm add express
pnpm add joi
pnpm add mongoose

# Dev only
pnpm add -D typescript
pnpm add -D @types/express

# aeshtetics && experience
# make sure following installed in vscode (if using it):
# DotENV
# Prettier
# vscode-icons



# update/upgrade
echo "NOTE: how should I update packages?"
read -p "Enter 'y' to update to latest package versions regardless of recommendations. What do you want me to do:  " ans

if [ $ans == "y" ]; then
    echo "Success! Installing packages to latest versions."
    pnpm up --latest
    tsc --init
    exit 0
fi

tsc --init
pnpm up