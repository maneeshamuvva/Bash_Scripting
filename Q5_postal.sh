!/bin/bash
clear
echo
GREEN='\033[1;36m'
YELLOW='\033[0;31m'
RED='\033[1;32m'
NC='\033[0m'
read -p "Enter Pincode:" PIN
pinlen=${#PIN}

if [[ ("$pinlen" -eq 6 ) && ( $PIN =~ ^[0-9]+$ ) ]]
then
        echo -e  "\n${YELLOW}Invalid Input (US pin contains 5 digits)${NC}"

elif [[ ( "$pinlen" -eq 5 ) && ( $PIN =~ ^[0-9]+$ ) ]]
then
        echo -e "\n$PIN--->${GREEN}US Pin${NC}"

elif [[ ( "$pinlen" -eq 6 ) && ( $PIN =~ ^[a-zA-Z0-9]+$ ) ]]
then
        echo -e "\n$PIN--->${RED}Canadian Pin${NC}"

else
        echo -e "\n${YELLOW}Invalid Input!!!${NC}"
fi
