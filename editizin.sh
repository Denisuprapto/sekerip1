#KEIZINAN SETUP
IZIN=$( curl https://raw.githubusercontent.com/Denisuprapto/daftarip/main/ipreg | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo -e "${red}Daftar IP Dulu Heheee #${NC}"
rm -f setup.sh
exit 0
fi


#KEIZINAN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
#########################
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/Denisuprapto/daftarip/main/ipreg | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";
    echo -e "\e[31mRenew IP Dulu Heheee #\e[0m"
    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/Denisuprapto/daftarip/main/ipreg | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";
echo -e "\e[31mDaftar IP Dulu Heheee #\e[0m"
exit 0
fi

https://raw.githubusercontent.com/shopeevpn/user-backup-v1
https://github.com/Denisuprapto/user-backup-v1.git
https://github.com/Denisuprapto/user-backup-v1
git config --global user.email "EMAIL-GITHUB" &> /dev/null
git config --global user.name "USERNAME-GITHUB" &> /dev/null
git push -f https://github.com/Denisuprapto/user-backup-v1.git &> /dev/null