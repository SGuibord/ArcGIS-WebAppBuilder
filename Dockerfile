FROM node:12

LABEL maintainer="WAB"

ARG ENV=unknown
ARG GIT_COMMIT=unknown

## GIT label of the packaged code
LABEL GIT_COMMIT=${GIT_COMMIT}

ENV ENV=${ENV}

WORKDIR /WAB/app

## Will need a local version of web app builder .zip to pull into build folder.
## NOTE: The following lines permits to install a specific Web AppBuilder version.
##		simply download from ArcGIS the version needed, replace the .zip file in the root 
##		of this project, adjust here, according to the names of the files in the following 
##		command lines. Note: The new image will not contain any dashboards or apps.
COPY ./arcgis-web-appbuilder-2.17.zip ./arcgis-web-appbuilder-2.17.zip
RUN unzip ./arcgis-web-appbuilder-2.17.zip
RUN rm ./arcgis-web-appbuilder-2.17.zip

## Copy all
COPY . /WAB/app

## Set timezone
RUN echo "America/Montreal" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

##TODO: See how to adapt for use with Volumes for persistent data in a multi user environnement.

##TODO: Add a functionnality to automatically download apps and dashboards from private ArcGIS Server or ArcGIS Online.
#WORKDIR /WAB/app/WebAppBuilderForArcGIS/server/apps/
#COPY ./<my dashboard>.zip ./<my dashboard>.zip
#RUN unzip ./<my dashboard>.zip

WORKDIR /WAB/app/WebAppBuilderForArcGIS

## Can be configured for : developpement, testing or production environnements.
RUN npm install prom-client --save-dev && \
  npm install express-prom-bundle --save-dev && \
  npm install

## Exposed ports
EXPOSE 3344 3345 3346

WORKDIR /WAB/app/WebAppBuilderForArcGIS/server

## TODO: Run as a Windows service
## Possibility to adapt for your special needs...
#RUN npm run-script install-windows-service
## To remove the ArcGIS Web AppBuilder service, run this command
#RUN npm run-script uninstall-windows-service

ADD ./docker /WAB/docker

RUN cat /WAB/docker/server.js >> /WAB/app/WebAppBuilderForArcGIS/server/server.js

CMD ["node", "server.js" ]