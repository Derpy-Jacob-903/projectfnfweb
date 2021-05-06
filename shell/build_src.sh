cd /home/appveyor/src/source
mkdir /home/appveyor/src/source/ugh
git clone https://github.com/Derpy-Jacob-903/APIStuff.git /home/appveyor/src/source/ugh
cd /home/appveyor/src/source/ugh
cp APIStuff.hx /home/appveyor/src/source
cd /home/appveyor/site
ls /home/appveyor/src/source/ugh
git config --global credential.helper store
printf "https://$GITHUB_ACCESS_TOKEN:x-oauth-basic@github.com\n" > $HOME/.git-credentials
git config --global user.email "mycatisagoodboi@gmail.com"
git config --global user.name "Derpy-Jacob-903"
cd /home/appveyor/src
haxelib run lime build html5
cd /home/appveyor/site
git rm -rf nightly/
