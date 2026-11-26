
#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Store the actual number of files
actual=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Initialize the user's guess
guess=0

# Continue until the correct answer is entered
while [ "$guess" -ne "$actual" ]; do

    read -p "Enter your guess: " guess

    # Check whether the input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        guess=0

    elif [ "$guess" -lt "$actual" ]; then
        echo "Too low! Try again."

    elif [ "$guess" -gt "$actual" ]; then
        echo "Too high! Try again."

    else
        echo "Congratulations! You guessed correctly!"
    fi

done

echo "Thank you for playing!"
