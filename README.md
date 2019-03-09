Etherpad Configuration
======================

This repository contains a ready to use  configuration for an Etherpad Lite
collaborative web service via docker-compose. It is configured to be
accessible via https via the traefik web proxy.

Etherpad Lite is a collaborative online editor.
https://etherpad.org/


Installation
------------

```
# clone repository
git clone git@gitlab.wachter-jud.net:docker/etherpad.git

# copy and edit the sample configuration file
cd etherpad
cp docker-compose.yml.sample docker-compose.yml
```

Edit docker-compose.yml and change the following values:

* `DatabaseRootPassword` create a new safe password
* `DatabasePassword` create a new safe password
* `EtherpadAdministrationPassword` create a new safe password for Etherpad administration
* `EtherpadAdministrationUserName` create the Etherpad administration user name of your choice 
* `your.etherpad.domain` the domain name under which this pad will be available


Usage
-----

```
# start Etherpad Lite
## please be aware that the data base container needs to be fully started
## before starting the Etherpad Lite container
## 
## docker-compose up -d etherpad-db
## sleep 10
## docker-compose up -d etherpad
## 
./start.sh

# stop Etherpad Lite
docker-compose down

# upgrade to new Etherpad Lite container version
docker-compose pull
```


