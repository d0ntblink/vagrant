# Update Packages
apt update
#Upgrade Packages
apt Upgrade

# Typical OS setups
apt install -y git
apt install -y vagrant
apt install apache2

# Set MySQL User & Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt install -y mysql-server