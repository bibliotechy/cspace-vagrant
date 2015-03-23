#! /bin/bash

sudo apt-get -y update
wget https://raw.github.com/cspace-puppet/cspace_puppet_bootstrap/master/scripts/bootstrap-cspace-modules.sh
chmod u+x bootstrap-cspace-modules.sh
sudo ./bootstrap-cspace-modules.sh -y
sudo su cspace -c " /usr/local/share/apache-tomcat-6.0.33/bin/startup.sh"
wget https://raw.githubusercontent.com/collectionspace/Tools/master/scripts/init-authorities.sh
chmod uga+x init-authorities.sh
sudo su cspace -c "./init-authorities.sh"
