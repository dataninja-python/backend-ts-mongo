#!/bin/bash

main () {
    setUser
    firstCommit
}

setUser () {
    read -p "Enter git email: " email
    read -p "Enter git username: " uname
    echo "============================================================"
    echo "Username: $uname"
    echo "Email: $email"
    echo "============================================================"
    echo "Is the above information correct?"
    read -p "Enter 'y' for 'yes':  " $ans
    
    if [ $ans == "y" ]; then
        git config user.email $email
        git config user.name $uname
    fi
}

firstCommit () {
    git add .
    git commit -m "initial commit: project and dev environment setup"
    git push origin main
}

# run script
main