cd /home/appveyor/site
git checkout main
cd /home/appveyor
sudo add-apt-repository ppa:haxe/releases -y
sudo apt update
sudo apt install neko tar -y
wget https://github.com/HaxeFoundation/haxe/releases/download/4.1.5/haxe-4.1.5-linux64.tar.gz
mkdir $HAXE_INSTALLDIR
tar -xf haxe-4.1.5-linux64.tar.gz -C $HAXE_INSTALLDIR
export PATH=$PATH:$HAXE_INSTALLDIR/haxe_20201231082044_5e33a78aa
mkdir $HAXELIB_ROOT && haxelib setup $HAXELIB_ROOT
haxelib install lime 7.9.0
haxelib install openfl
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
haxelib install flixel-tools
haxelib install flixel-addons
haxelib install flixel-ui
haxelib install hscript
haxelib install newgrounds
haxelib install linc_luajit
haxelib git faxe https://github.com/uhrobots/faxe
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib list
