# Etherpad Configuration

This repository contains a ready to use  configuration for an Etherpad Lite
collaborative web service via docker-compose. It is configured to be
accessible via https via the traefik web proxy.

Etherpad Lite is a collaborative online editor.

* Etherpad web page: https://etherpad.org/
* Etherpad docker configuration options: https://hub.docker.com/r/webhippie/etherpad


## Installation

```
# clone repository
git clone https://git.open-communication.net/open-communication/docker/etherpad.git

# move into project folder
cd etherpad

# copy and edit the configuration file
cp sample.env .env
```

Edit `.env` configuration file and change the following values:

* `DatabaseRootPassword` create a new safe password
* `DatabasePassword` create a new safe password
* `EtherpadAdministrationPassword` create a new safe password for Etherpad administration
* `EtherpadAdministrationUserName` create the Etherpad administration user name of your choice 
* `your.etherpad.domain` the domain name under which this pad will be available


## Usage

```
# start Etherpad Lite
docker-compose up -d

# stop Etherpad Lite
docker-compose down

# upgrade to new Etherpad Lite container version
docker-compose pull
```


