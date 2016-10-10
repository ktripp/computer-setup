# install pip
sudo easy_install pip

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install git-aware-prompt
mkdir ~/.bash
cd ~/.bash
git clone git://github.com/jimeh/git-aware-prompt.git

# install virtualenv
sudo pip install virtualenvwrapper

# install mysql
brew install mysql
ln -sfv /usr/local/opt/mysql/*.plist
launchctl load /usr/local/opt/mysql/homebrew.mxcl.mysql.plist 
mysql_tzinfo_to_sql /usr/share/zoneinfo | sed -e "s/Local time zone must be set--see zic manual page/local/" | mysql -u root mysql

# set up bash_profile
cp git-completion.bash ~/.git-completion.bash
cp bash_profile ~/.bash_profile
source ~/.bash_profile
