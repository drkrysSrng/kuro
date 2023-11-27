#!/bin/bash

# Download Tor Browser
wget https://www.torproject.org/dist/torbrowser/11.0.5/tor-browser-linux64-11.0.5_en-US.tar.xz

# Extract the tarball
tar -xf tor-browser-linux64-11.0.5_en-US.tar.xz

# Move Tor Browser to a permanent location
sudo mv tor-browser_en-US /opt/

# Create a desktop shortcut
echo "[Desktop Entry]" > tor-browser.desktop
echo "Version=1.0" >> tor-browser.desktop
echo "Name=Tor Browser" >> tor-browser.desktop
echo "Comment=Web browser that protects your anonymity" >> tor-browser.desktop
echo "Exec=/opt/tor-browser_en-US/Browser/start-tor-browser %U" >> tor-browser.desktop
echo "Terminal=false" >> tor-browser.desktop
echo "Type=Application" >> tor-browser.desktop
echo "Icon=/opt/tor-browser_en-US/Browser/browser/chrome/icons/default/default48.png" >> tor-browser.desktop
echo "Categories=Network;WebBrowser;" >> tor-browser.desktop

# Move the desktop shortcut to the applications directory
sudo mv tor-browser.desktop /usr/share/applications/

# Make the desktop shortcut executable
sudo chmod +x /usr/share/applications/tor-browser.desktop

# Clean up temporary files
rm tor-browser-linux64-11.0.5_en-US.tar.xz

# Display a message to launch Tor Browser
echo "Tor Browser installation completed. You can launch it from the application menu or use the desktop shortcut."
