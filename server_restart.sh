#!/bin/bash

# run chmod +x server_restart.sh
# Function to run the Java program
run_program() {
    #enter command
}

while true; do
    # Run the Java program in the background
    run_program &
    pid=$!

    # Wait for the Java program to finish
    wait $pid
    exit_code=$?

    # Check if the Java program crashed
    if [ $exit_code -ne 0 ]; then
        sleep 5
        continue
    fi
    break
done
