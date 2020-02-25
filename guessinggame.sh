#!/usr/bin/env bash

guess() {
    local answer=$(ls | wc -l | xargs expr)

    echo -n "Guess how many files are in the current directory: "
    read guess

    if [[ $guess -lt $answer ]]
    then
        echo "Too low, try again."
        return 1
    elif [[ $guess -gt $answer ]]
    then
        echo "Too high, try again."
        return 1
    else
        echo "Congratulations, your guess is correct!"
        return 0
    fi
}

while ! guess
do
    :
done
