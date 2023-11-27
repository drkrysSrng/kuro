

echo -e "\n${blueColour}[!] Installing firefox... ${endColour}"

sudo apt update
sudo apt install firefox -y

echo -e "\n${blueColour}[!] Download Proxy Extension and extracting it... ${endColour}"

wget "https://addons.mozilla.org/firefox/downloads/file/foxyproxy_standard-7.5.1-an+fx.xpi" -O foxyproxy.xpi
mkdir -p ~/.mozilla/firefox/default.default/extensions/foxyproxy@eric.h.jung/
unzip foxyproxy.xpi -d ~/.mozilla/firefox/default.default/extensions/foxyproxy@eric.h.jung/

echo -e "\n${turquoiseColour}[!] Tell me your proxy address [localhost]:${endColour}"
read tag
# Create a user.js file with SOCKS proxy configuration
echo 'user_pref("network.proxy.type", 1);' > ~/proxy_config.js
echo 'user_pref("network.proxy.socks", "your_socks_proxy_address");' >> ~/proxy_config.js
echo 'user_pref("network.proxy.socks_port", your_socks_proxy_port);' >> ~/proxy_config.js
echo 'user_pref("network.proxy.socks_version", 5);' >> ~/proxy_config.js

# Add a line to point to the user.js file in Firefox's preferences
echo 'user_pref("general.config.obscure_value", 0);' > ~/mozilla.cfg
echo 'user_pref("general.config.filename", "mozilla.cfg");' >> ~/mozilla.cfg

# Move the configuration files to the Firefox profile folder
cp ~/proxy_config.js ~/.mozilla/firefox/default.default/
cp ~/mozilla.cfg ~/.mozilla/firefox/default.default/

# Clean up temporary files
rm foxyproxy.xpi ~/proxy_config.js ~/mozilla.cfg

# Display a message to restart Firefox
echo "Firefox installation and SOCKS proxy configuration completed. Please restart Firefox."
