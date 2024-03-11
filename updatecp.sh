#!/bin/bash

echo "Changing directory to /usr/local/LitePages"
cd /usr/local/LitePages || exit 1

echo "Stashing any local changes"
git stash

echo "Pulling latest changes from the remote repository"
git pull

echo "Stopping the litepages service"
systemctl stop litepages

echo "Starting the litepages service"
systemctl start litepages
