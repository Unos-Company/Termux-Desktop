clear
echo -e "\e[32m Welcome to Unos "
printf '\e[39m Press enter to continue' printf '\e[96m :' && read enter
echo "Running update "
pkg update -y
echo "Upgrading system by installing apt "
pkg upgrade -y
clear
echo "Loading system files " && sleep 3
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo -n "⬜"
sleep 1
echo " Loaded all files " && sleep 2
apt install x11-repo -y && apt install xfce4 pulseaudio xfce4-terminal tigervnc --no-install-recommends -y
clear
echo "Installing required tools "
apt install pcmanfm florence termux-api xarchiver wireshark-gtk geany mpv-x python ruby --no-install-recommends -y
clear
echo "Installing Loader packages "
pip install --upgrade pip 
clear
echo "Installing youtube-dl "
pip install youtube-dl
clear
echo "Installing soundcloud-dl "
pip install soundcloud-dl 
clear
echo "Installing spotify-dl "
pip install spotify-dl
clear
echo "Installing browser for system "
apt install netsurf -y
echo "if you want open browser type 'netsurf' "
sleep 3
clear
cd
echo "Installing Music player "
apt install mpv-x -y
apt install git -y
git clone https://github.com/BagazMukti/MuxSic
cd MuxSic
./install.sh
mkdir .vnc
echo '
## unos-company 
## Xstartup 
startxfce4 & ' ~/.vnc/xstartup
chmod 777 .vnc/xstartup
clear
echo "Please enter your password "
printf 'The password wont be seen will your typing so be carefull '
vncpasswd
vncserver
echo "Open the vnc app , click on new , "
echo "type for andress > 'localhost:1' "
echo "type for Name > 'Unos-linux' "
echo "Please install the vnc app"
termux-open-url https://play.google.com/store/apps/details?id=com.realvnc.viewer.android
echo "Done "
printf "To start type 'vncserver' to stop type 'vncserver -kill:1 ' "

