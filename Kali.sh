#!/bin/bash


#------------------> Color Code:
BLUE="\033[36m"
RED="\033[01;31m"
XX="\033[0m" #--- Close COLOR
#------------------> Banner:
echo -e "\n"
echo -e "\n"
echo -e "
                ▄▄▄▄▄▄▄▄▄▄▄▄
              ████████████████
            ███████████████████
          ▐██████████████████████           
            ▀▀▀▀████████████▀▀▀▀            ██████╗ ██████╗  █████╗      ██╗███████╗ █████╗ ████████╗  ██╗  ██╗██╗   ██╗██╗     ██╗  ██╗ 
      ▄▄▄██                      ██▄▄▄      ██╔══██╗██╔══██╗██╔══██╗     ██║██╔════╝██╔══██╗╚══██╔══╝  ██║  ██║██║   ██║██║     ██║ ██╔╝ 
  ██████████▄▄▄▄▄▄        ▄▄▄▄▄▄██████████  ██████╔╝██████╔╝██║  ██║     ██║█████╗  ██║  ╚═╝   ██║     ███████║██║   ██║██║     █████═╝
        ▀▀▀██████████████████████▀▀▀        ██╔═══╝ ██╔══██╗██║  ██║██╗  ██║██╔══╝  ██║  ██╗   ██║     ██╔══██║██║   ██║██║     ██╔═██╗ 
                                            ██║     ██║  ██║╚█████╔╝╚█████╔╝███████╗╚█████╔╝   ██║     ██║  ██║╚██████╔╝███████╗██║ ╚██╗
           █                  █             ╚═╝     ╚═╝  ╚═╝ ╚════╝  ╚════╝ ╚══════╝ ╚════╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
            █    ██▀▀▀▀██    █              ═════════════════════════════════════════════════════════════{Fixing Kali Source List File}
             █  ▀        ▀  █
              ██▄████████▄██
                ▀████████▀
                   ████
" 
echo -e "\n${RED}Please note that this script will add kali mirror links to fast up your download${XX}"
echo -e "${RED}To get other mirrors of your choice: https://http.kali.org/README.mirrorlist ${XX}"
sleep 1
echo -e "\n"
read -p "╔═════{ Did you take backup of your source.list file? [Y/N]: " input
if [[ $input == "Y" || $input == "y" ]]; 
  then
    echo -e "\n${BLUE}╔═════{ Adding Kali Mirror Links:${XX}"
      sudo echo "# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/" | sudo tee /etc/apt/sources.list
      sudo echo "# deb https://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee -a /etc/apt/sources.list
      sudo echo "" | sudo tee -a /etc/apt/sources.list
      sudo echo "# Additional line for source packages" | sudo tee -a /etc/apt/sources.list
      sudo echo "# deb-src https://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee -a /etc/apt/sources.list
      sudo echo "" | sudo tee -a /etc/apt/sources.list
      sudo echo "# Mirror Links" | sudo tee -a /etc/apt/sources.list
      sudo echo "deb https://mirror.karneval.cz/pub/linux/kali/ kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
      sudo echo "deb-src https://mirror.karneval.cz/pub/linux/kali/ kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
    echo -e "\n${BLUE}╔═════{ Updating Your Host:${XX}"
      apt-get update -y && apt-get upgrade -y && apt-get autoremove -y && apt-get dist-upgrade -y && apt-get autoremove -y && apt-get full-upgrade -y && apt-get autoremove -y && apt-get clean -y
  else
      echo -e "\n${RED}        Please Take Backup${XX}"
fi








