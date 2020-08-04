# ArcGIS - Web AppBuilder (Developper Edition)

Permet l'exécution d'ArcGIS Web AppBuilder (Developper Edition) dans un conteneur Docker linux


## Répertoires et configuration

- <container>/app : Répertoire source de l'application.
- <container>/WebAppBuilderForArcGIS : Répertoire principale contenant tous les fichiers de l'application.
- <container>/WebAppBuilderForArcGIS/server/apps/<répertoires> : Répertoire contenant tous les Applications et Tableaux de Bords inscrits avec Web AppBuilder.
- <container>/WebAppBuilderForArcGIS/server/apps/zips : Répertoire contenant tous les Applications et Tableaux de Bords exporté depuis Web AppBuilder.
- <container>arcgis-web-appbuilder-2.17.zip : Ce fichier .zip doit être situé directement dans le répertoire principale du projet sinon le Dockerfile doit être modifié. Téléchargez directement depuis ESRI, la version de l'application Web AppBuilder désiré et placer dans le répertoire source du projet.

  Ce fichier est décompressé, par une commande dans le Dockerfile, à l'intérieur du conteneur lors du déploiement.

  Note : Ce fichier peut être remplacé par la version de votre choix. Si ce fichier est remplacé il sera alors nécessaire de modifier le fichier Dockerfile en concordance.

## Git Hub fichiers projet

- Télécharger "clone" les fichiers sources de ce projet depuis Git Hub afin de vous permettre de modifier cette image selon vos besoins.
```
  $ git clone https://github.com/SGuibord/arcgis-webappbuilder
```

## Actions Docker

- Télécharger depuis Docker Hub
```
  $ docker pull <Docker ID>/webappbuilder-for-arcgis:<tag>
    Docker ID: nom du compte Docker Hub
    tag : voir tags disponible
  $ docker pull sguibord/webappbuilder-for-arcgis:latest
  $ docker pull sguibord/webappbuilder-for-arcgis:2.17
  $ docker pull sguibord/webappbuilder-for-arcgis:2.15
  $ docker pull sguibord/webappbuilder-for-arcgis:2.14
```
- Bâtir l'image
```
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:<tag> .
    tag : voir tags disponible
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:latest .
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:2.17 .
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:2.15 .
  $ docker build --rm -f "Dockerfile" -t webappbuilder-for-arcgis:2.14 .
```
- Creation du conteneur Docker
```  
  $ docker run --name webappbuilder webappbuilder-for-arcgis:<tag>
    tag : voir tags disponible
  $ docker run --name webappbuilder webappbuilder-for-arcgis:latest
  $ docker run --name webappbuilder webappbuilder-for-arcgis:2.17
  $ docker run --name webappbuilder webappbuilder-for-arcgis:2.15
  $ docker run --name webappbuilder webappbuilder-for-arcgis:2.14
```
- Publication à un compte Docker Hub
```
  $ docker tag webappbuilder-for-arcgis:<tag> <Docker ID>/webappbuilder-for-arcgis:<tag>
  $ docker push <Docker ID>/webappbuilder-for-arcgis:<tag>
    Docker ID: nom du compte Docker Hub
    tag : voir tags disponible

  $ docker tag webappbuilder-for-arcgis:latest sguibord/webappbuilder-for-arcgis:latest
  $ docker push sguibord/webappbuilder-for-arcgis:latest

  $ docker tag webappbuilder-for-arcgis:2.17 sguibord/webappbuilder-for-arcgis:2.17
  $ docker push sguibord/webappbuilder-for-arcgis:2.17

  $ docker tag webappbuilder-for-arcgis:2.15 sguibord/webappbuilder-for-arcgis:2.15
  $ docker push sguibord/webappbuilder-for-arcgis:2.15

  $ docker tag webappbuilder-for-arcgis:2.14 sguibord/webappbuilder-for-arcgis:2.14
  $ docker push sguibord/webappbuilder-for-arcgis:2.14
```
- Tags disponible
```
  tag : latest, 2.17, 2.15, 2.14, ...
```
## Configuration de l'application

Suivre ce [lien](https://developers.arcgis.com/web-appbuilder/guide/getstarted.htm) pour les instructions d'installation.

## Comment démarrer l'application ArcGIS Web AppBuilder (Developper Edition) localement

> Lien local : https://localhost:3344/webappbuilder/

## Configuration pour l'accès depuis ArcGIS Online ou Portal

1. Connectez à un compte ArcGIS Portal ou ArcGIS Online : https://www.arcgis.com/
2. Selectionnez : Organization depuis le menu.
3. Selectionnez : Settings
4. Selectionnez : General
5. Décendez jusqu'à : App Launcher
6. Selectionnez : Ajouter et suivre les instructions.

## Accèder à l'application depuis ArcGIS Online ou Portal

1. Connectez à un compte ArcGIS Portal ou ArcGIS Online : https://www.arcgis.com/
2. ![Sélectionnez : ](img/Portal1.PNG "Sélectionnez")
3. ![Sélectionnez : ](img/Portal2.PNG "Sélectionnez")

## Au premier démarrage de l'application

Il allez devoir répondre aux questions suivantes :

- Spécifiez l'URL de votre organisation ArcGIS Online ou Portal : 
    
  https://www.arcgis.com/

- Fournissez le app ID de l'application ayant servi pour l'enregistrement.

  Suivre ce [lien](https://developers.arcgis.com/web-appbuilder/guide/getstarted.htm#ESRI_SECTION1_F2CE6567CB854E4AB43F08EB64B3D7AE) pour savoir comment accèder au app ID de l'application.


# Références

1. [Web AppBuilder](https://developers.arcgis.com/web-appbuilder/)
2. [Guide d'installation de ArcGIS Web AppBuilder (Developper Edition)](https://developers.arcgis.com/web-appbuilder/guide/getstarted.htm)
3. [Exécution en tant que service](https://developers.arcgis.com/web-appbuilder/guide/getstarted-run-as-window-service.htm)