## LibreOffice Dockerfile
LibreOffice Dockerfile on microsoft/windowsservercore.

This repository contains **Dockerfile** of [LibreOffice](https://www.libreoffice.org/) for [Docker](https://www.docker.com/).


### Base Docker Image

* [microsoft/windowsservercore](https://hub.docker.com/r/microsoft/windowsservercore/)

### Installation

1. Install [Docker](https://www.docker.com/).
1. `docker build -t="dockerfile/nodejs" github.com/srssoft/libreoffice` 

### Usage

    docker run -d --name libreofficeInstance -p 8100:8100 libreoffice

#### Run with mounted volume

    docker run -d -v C:\StorageDemo:C:\StorageDemo -p 8100:8100 --name libreofficeInstance libreoffice

#### Run `with alternate port / options`

    docker run -d --name libreofficeInstance -p 2100:2100 libreoffice -accept=\"socket,host=0.0.0.0,port=2100;urp;\" -headless -nofirststartwizard
