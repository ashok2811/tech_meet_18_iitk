red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}Removing Your previous GQRX pakage ${green}:("
sudo apt-get purge --auto-remove gqrx
sudo apt-get purge --auto-remove gqrx-sdr
sudo apt-get purge --auto-remove libgnuradio*
echo "${green}Adding new GQRX pakage :)"
sudo add-apt-repository -y ppa:bladerf/bladerf
sudo add-apt-repository -y ppa:ettusresearch/uhd
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo add-apt-repository -y ppa:myriadrf/gnuradio
sudo add-apt-repository -y ppa:gqrx/gqrx-sdr
sudo apt-get update
echo "${green}Installing GQRX-SDR :) "
sudo apt-get install gqrx-sdr
echo "${red}Installing libvolk1-bin and vol_profile -Optimising tools"
sudo apt-get install libvolk1-bin
volk_profile
echo "${red}Done ${green}:-)"

sudo apt install rtl-sdr

echo "${red} By Ashok-- https://github.com/ashok2811/tech_meet_iitk"
