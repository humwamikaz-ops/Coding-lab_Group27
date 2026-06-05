#!/bin/bash


# Member 1 - The Architect
# This function initializes the KNH system directories

initialize_system() {
    if [ ! -d "active_logs" ]; then
        echo "Creating active_logs directory..."
        mkdir active_logs
    fi

    if [ ! -d "archived_logs" ]; then
        echo "Creating archived_logs directory..."
        mkdir archived_logs
    fi

    if [ ! -d "reports" ]; then
        echo "Creating reports directory..."
        mkdir reports
    fi
}

secure_data() {
    # Only the owner can read/write active_logs
    chmod 600 active_logs
    ls -l  # show the new permissions

}

# Execution logic (Member 3)
initialize_system
secure_data

echo "System Environment Secured"
