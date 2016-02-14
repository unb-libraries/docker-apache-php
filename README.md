# unblibraries/apache-php [![](https://badge.imagelayers.io/unblibraries/apache-php:alpine.svg)](https://imagelayers.io/?images=unblibraries/apache-php:alpine 'Get your own badge on imagelayers.io')
Docker container : Alpine linux based Apache/PHP.

## Usage
```
docker run \
       --rm \
       --name apache-php \
       -v /local/dir:/app/html \
       -p 80:80 \
       unblibraries/apache-php:alpine
```

## License
- unblibraries/apache-php is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Apache PHP Docker Container by UNB Libraries`
