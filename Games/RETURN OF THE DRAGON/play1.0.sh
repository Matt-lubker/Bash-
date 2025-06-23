#!/bin/bash

# Return of the Dragon - Main Menu
# Author: Matthew Lubker

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

# Clear screen
clear

# Fancy ASCII Title + Dragon Art
draw_title() {
    echo -e "${RED}"
    echo "   =============================================="
    echo "             RETURN OF THE DRAGON"
    echo "   =============================================="
    echo -e "${CYAN}                A Game by Matthew Lubker${RESET}"
    echo
    echo -e "${YELLOW}"
cat << "EOF"
                 ___====-_  _-====___
           _--^^^#####//      \\#####^^^--_
        _-^##########// (    ) \\##########^-_
       -############//  |\^^/|  \\############-
     _/############//   (@::@)   \\############\_
    /#############((     \\//     ))#############\
   -###############\\    (oo)    //###############-
  -#################\\  / UUU \  //#################-
 -###################\\/  (_)  \//###################-
_#/|##########/\######(   '/\'   )######/\##########|\#_
|/ |#/\#/\#/\/  \#/\##\  !     !  /##/\#/  \/\#/\#/\#| \|
'  |/  V  V '   V  \\#\|  |)   (| |/#/  V   '  V  V  \|  '
   '   '  '      '   / |  |(.:)| | \   '      '  '   '
                    (  |  |   | |  )
                   __\ |  |   | | /__
                  (vvv(VVV) (VVV)vvv)
EOF
    echo -e "${RESET}"
    echo
}

# Loading animation
loading() {
    echo -ne "${YELLOW}Loading"
    for i in {1..3}; do
        echo -ne "."
        sleep 0.5
    done
    echo -e "${RESET}\n"
}

# Main menu
main_menu() {
    clear
    draw_title
    loading
    echo -e "${GREEN}1) Start New Game"
    echo "2) Load Game"
    echo "3) Instructions"
    echo "4) Credits"
    echo "5) Exit${RESET}"
    echo
    echo -n -e "${CYAN}Enter your choice: ${RESET}"
    read choice

    case $choice in
        1)
            echo -e "${YELLOW}\nStarting a new adventure...\n${RESET}"
            sleep 1
            # start_game
            ;;
        2)
            echo -e "${YELLOW}\nLoading your saved journey...\n${RESET}"
            sleep 1
            # load_game
            ;;
        3)
            echo -e "\n${CYAN}--- INSTRUCTIONS ---${RESET}"
            echo "Use your keyboard to select choices and guide your character."
            echo "Make smart decisions and defeat the Dragon!"
            echo
            read -p "Press Enter to return to menu..."
            main_menu
            ;;
        4)
            echo -e "\n${CYAN}--- CREDITS ---${RESET}"
            echo "Game developed by Matthew Lubker."
            echo "A text-based quest full of magic and danger."
            echo
            read -p "Press Enter to return to menu..."
            main_menu
            ;;
        5)
            echo -e "${RED}\nFarewell, brave adventurer...\n${RESET}"
            exit 0
            ;;
        *)
            echo -e "${RED}Invalid choice. Try again.${RESET}"
            sleep 1
            main_menu
            ;;
    esac
}

main_menu

