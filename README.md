# unblibraries/apache-php
Docker container : leverages phusion/baseimage to deploy a baseline libapache2-mod-php5 Apache container.

## Usage
```
docker run \
       --rm \
       --name apache-php \
       -v /local/dir:/var/www/html \
       -p 80:80 \
       unblibraries/apache-php
```

## License
- unblibraries/apache-php is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Apache PHP Docker Container by UNB Libraries`
