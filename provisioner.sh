#! /bin/bash

wget https://raw.github.com/cspace-puppet/cspace_puppet_bootstrap/master/scripts/bootstrap-cspace-modules.sh
chmod u+x bootstrap-cspace-modules.sh
sudo ./bootstrap-cspace-modules.sh -y
sudo su cspace
$CSPACE_JEESERVER_HOME/bin/startup.sh
wget https://raw.githubusercontent.com/collectionspace/Tools/master/scripts/init-authorities.sh
chmod u+x init-authorities.sh
sudo ./init-authorities.sh


