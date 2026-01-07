#!/bin/bash
set -e

echo "Updating system..."
sudo apt update -y

echo "Installing Node.js 20..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

echo "Installing required packages..."
sudo apt install -y nodejs git nginx

echo "Installing PM2..."
sudo npm install -g pm2

echo "Enable & start Nginx..."
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Creating app directory..."
sudo mkdir -p /var/www/ecommerce
sudo chown -R ubuntu:ubuntu /var/www/ecommerce

echo "Bootstrap complete ✅"
