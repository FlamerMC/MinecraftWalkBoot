echo '
        ....
     .............
    ................
    .:..........
   .-=---:...    .
  --==-----.....
 .---::::-+-.::.. ..
 ----:::.:--:::::::.
 :------::::::--==+=-:
 ----::-------------::.
 ----:------------:::::
 ----:-------:-----:::.
.----::------::----::::
  .::.::::----:----::::
      :::::---:----::::
      :::::::-:----::::
      ::::::::..:--::.
      ::::::::....
      ::::::::....
      ::::::::....
      ::::::::....
      .:::::::....
         ..:::....
             ..
'

sudo -i
echo 'Checking Dependineis cant spell :)'
apt install unzip
apt install plymouth
cd /usr/share/plymouth/themes/
wget https://github.com/FlamerMC/MinecraftWalkBoot/raw/main/mcwalk.zip
unzip mcwalk.zip
cd ~
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/mcwalk/mcwalk.plymouth 100
echo 'select mcwalk or else it wont work'
sudo update-alternatives --config default.plymouth
echo 'applying'
sudo update-initramfs -u
