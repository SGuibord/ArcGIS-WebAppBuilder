# ArcGIS - Web AppBuilder (Developper Edition)

Permitts the execution of ArcGIS Web AppBuilder (Developper Edition) inside a Docker linux container.


## Paths and configurations

- <container>/app : application root.
- <container>/WebAppBuilderForArcGIS : Main path, contains all project and application files.
- <container>/WebAppBuilderForArcGIS/server/apps/<répertoires> : Path that contains all created Applications and Dashboards for use within Web AppBuilder.
- <container>/WebAppBuilderForArcGIS/server/apps/zips : Path that contains all exported Applications and Dashboards exported from Web AppBuilder.
- <container>arcgis-web-appbuilder-*.zip : This .zip file must be situated in the root directory of this project or modify the Dockerfile accordingly. Download from ESRI, the .zip file for the version of the Web AppBuilder you need and place it in the root of this project.
  
  This file is unzipped by a command in the Dockerfile when deploying inside the Docker container.
  
  NOTE: This file can be replaced with the version of the application you prefer. If this file is replaced you will also need to rename in the Dockerfile accordingly.

## Git Hub project files

- Download project form Git Hub to be able to create an image suitable to your needs.
```
  $ git pull
```

## Dockerizing

- Download Images from Docker Hub
```
  $ docker pull <Docker ID>/webappbuilder-for-arcgis:<tag>
    Docker ID: nom du compte Docker Hub
    tag : see Available Tags
  $ docker pull sguibord/webappbuilder-for-arcgis:latest
  $ docker pull sguibord/webappbuilder-for-arcgis:2.17
  $ docker pull sguibord/webappbuilder-for-arcgis:2.15
  $ docker pull sguibord/webappbuilder-for-arcgis:2.14
```
- Build Images
```
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:<tag> .
    tag : see Available Tags
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:latest .
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:2.17 .
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:2.15 .
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:2.14 .
```
- Create containers
```  
  $ docker run --name webappbuilder webappbuilder-for-arcgis:<tag>
    tag : see Available Tags
  $ docker run --name webappbuilder webappbuilder-for-arcgis:latest
  $ docker run --name webappbuilder webappbuilder-for-arcgis:2.17
  $ docker run --name webappbuilder webappbuilder-for-arcgis:2.15
  $ docker run --name webappbuilder webappbuilder-for-arcgis:2.14
```
- Publishing to a Docker Hub account
```
  $ docker tag webappbuilder-for-arcgis:<tag> <Docker ID>/webappbuilder-for-arcgis:<tag>
  $ docker push <Docker ID>/webappbuilder-for-arcgis:<tag>
    Docker ID: nom du compte Docker Hub
    tag : see Available Tags

  $ docker tag webappbuilder-for-arcgis:latest sguibord/webappbuilder-for-arcgis:latest
  $ docker push sguibord/webappbuilder-for-arcgis:latest

  $ docker tag webappbuilder-for-arcgis:2.17 sguibord/webappbuilder-for-arcgis:2.17
  $ docker push sguibord/webappbuilder-for-arcgis:2.17

  $ docker tag webappbuilder-for-arcgis:2.15 sguibord/webappbuilder-for-arcgis:2.15
  $ docker push sguibord/webappbuilder-for-arcgis:2.15

  $ docker tag webappbuilder-for-arcgis:2.14 sguibord/webappbuilder-for-arcgis:2.14
  $ docker push sguibord/webappbuilder-for-arcgis:2.14
```
- Available Tags
```
  tag : latest, 2.17, 2.15, 2.14, ...
```
## Configuring the application

Follow this [link](https://developers.arcgis.com/web-appbuilder/guide/getstarted.htm) for installation instructions.

## How to start ArcGIS Web AppBuilder (Developper Edition) application locally

> Local Link : https://localhost:3344/webappbuilder/

## Configuring for access from ArcGIS Online or Portal

1. Connect to an account in ArcGIS Portal or ArcGIS Online : https://www.arcgis.com/
2. Select : Organization from the menu
3. Select : Settings
4. Select : General
5. Scroll down to : App Launcher
6. Select : Add and follow instructions

## Accessing the application from ArcGIS Online or Portal

1. Connect to an account in ArcGIS Portal or ArcGIS Online : https://www.arcgis.com/
2. ![Select : ](img/Portal1.PNG "Select")
3. ![Select : ](img/Portal2.PNG "Select")

## At first start of application

You will have to specify the following :

- Specify the URL of your ArcGIS Online or Portal for ArcGIS account where the application has been registered.
  
  https://www.arcgis.com/

- Provide the app ID used to register your Web AppBuilder.
  
  Follow this [link](https://developers.arcgis.com/web-appbuilder/guide/getstarted.htm#ESRI_SECTION1_F2CE6567CB854E4AB43F08EB64B3D7AE) to access the app ID of your registered application.


# Ressources

1. [Web AppBuilder](https://developers.arcgis.com/web-appbuilder/)
2. [Installation guide for ArcGIS Web AppBuilder (Developper Edition)](https://developers.arcgis.com/web-appbuilder/guide/getstarted.htm)
3. [Run as a service](https://developers.arcgis.com/web-appbuilder/guide/getstarted-run-as-window-service.htm)