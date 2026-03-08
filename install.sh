#!/bin/bash

# --- Configuration ---
ADMIN_EMAIL="admin@example.com"
ADMIN_USER="admin"
ADMIN_PASS="DefaultPass123!"  # Change this immediately after login
PANEL_PORT="8080"

echo "### Starting Professional Minecraft Hosting Setup ###"

# 1. Update and Install Base Dependencies
apt-get update && apt-get install -y curl wget gnupg2 sudo screen ca-certificates

# 2. Install PufferPanel Repository and Package
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
apt-get install -y pufferpanel

# 3. Install Playit.gg Repository and Package
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg > /dev/null
echo "deb [arch=amd64] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit.list
apt-get update && apt-get install -y playit

# 4. Pre-configure PufferPanel Admin
# We use the 'pufferpanel user add' command with flags for non-interactive setup
echo "Setting up default admin account..."
/usr/sbin/pufferpanel user add \
    --email "$ADMIN_EMAIL" \
    --name "$ADMIN_USER" \
    --password "$ADMIN_PASS" \
    --admin true

# 5. Enable and Start Services (If not in a Docker environment)
# If running on a standard VPS, use systemctl. 
# If on Render/Docker, these will be handled by your ENTRYPOINT.
systemctl enable pufferpanel
systemctl start pufferpanel

echo "------------------------------------------------"
echo "Setup Complete!"
echo "PufferPanel URL: http://your-ip:$PANEL_PORT"
echo "Admin User: $ADMIN_USER"
echo "Admin Pass: $ADMIN_PASS"
echo "------------------------------------------------"
