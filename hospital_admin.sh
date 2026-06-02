#!/bin/bash
secure_data() {
    # Only the owner can read/write active_logs
    chmod 600 active_logs
    ls -l  # show the new permissions
}
