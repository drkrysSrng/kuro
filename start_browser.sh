#!/bin/bash

#Colours palette
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


echo -e "${purpleColour}"

cat << "EOF"

                |\_/|                  
                | @ @   Woof! 
                |   <>              _  
                |  _/\------____ ((| |))
                |               `--' |   
            ____|_       ___|   |___.' 
            /_/_____/____/_______|

EOF

cat << "EOF"

        ██   ██ ██    ██ ██████   ██████  
        ██  ██  ██    ██ ██   ██ ██    ██ 
        █████   ██    ██ ██████  ██    ██ 
        ██  ██  ██    ██ ██   ██ ██    ██ 
        ██   ██  ██████  ██   ██  ██████ 

EOF
echo -e "${turquoiseColour}"

cat << "EOF"
    🕵️‍♀️🐶🥷...Cyber Intelligence Platform...🥷🐶🕵️‍♀️
                                            by drkrysSrng


EOF

echo -e "${endColour}"


install_function() {
    sleep 10  # Simulating the installation process
}

# Function to display the animation
spinner() {
    local pid=$1
    local delay=0.1
    local chars=("|" "/" "-" "\\")
    echo -e "${purpleColour}"
    while ps -p $pid > /dev/null; do
        for char in "${chars[@]}"; do
            echo -ne "\r[.] Working: ${char}"
            sleep ${delay}
        done
    done

    echo -ne "\r[.] Complete!       ${endColour}"

}



echo -e "\n${redColour}[!] Installing firefox... ${endColour}"
# Your installation command here
install_function &

# Get the process ID of the last background command
pid=$!

# Call the spinner function with the process ID
spinner ${pid}


echo -e "\n${redColour}[!] Firefox installed! ${endColour}"

echo -e "\n${redColour}[!] Installing Foxy Proxy... ${endColour}"
# Your installation command here
install_function &

# Get the process ID of the last background command
pid=$!

# Call the spinner function with the process ID
spinner ${pid}


echo -e "\n${redColour}[!] Foxy Proxy installed! ${endColour}"