#!/bin/bash

# change file access permissions: chmod +x nginx.sh
# run script: ./nginx.sh

while [ True ]
do
        echo """NGINX STATUS:
        """
        sudo systemctl status nginx | grep Active
        echo """
        
NGINX options

1) Start nginx service
2) Stop nginx service
3) Show address
x) exit
"""
        read -p 'Select an option: ' user_option
        echo $user_option

        case $user_option in
                '1')
                        echo """
turning ON nginx..
                        """
                        sudo systemctl enable nginx
                        sudo systemctl start nginx
                        clear
                        ;;
                '2')
                        echo """
turning OFF nginx..
                        """
                        sudo systemctl stop nginx
                        sudo systemctl disable nginx
                        clear
                        ;;
                '3')
                        clear
                        ifconfig | grep inet
                        read -p """
press enter to continue.."""
                        clear;;
                'x')
                        exit
                        ;;
                *)
                        echo "invalid option"
                        ;;
        esac
done
