# unblibraries/apache-php:alpine [![](https://badge.imagelayers.io/unblibraries/apache-php:alpine.svg)](https://imagelayers.io/?images=unblibraries/apache-php:alpine 'Get your own badge on imagelayers.io') [![Build Status](https://travis-ci.org/unb-libraries/docker-apache-php.svg?branch=alpine)](https://travis-ci.org/unb-libraries/docker-apache-php)
Deploy a baseline ```mod_php``` supported ```apache``` app container with ```composer``` support.

## Repository Tags

|                 Tag                | PHP   | Size                                                                                                                                                                                 | Status                                                                                                                                               |
|:----------------------------------:|-------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| unblibraries/apache-php:alpine      | 5.6.x | [![](https://badge.imagelayers.io/unblibraries/apache-php:alpine.svg)](https://imagelayers.io/?images=unblibraries/apache-php:alpine 'Get your own badge on imagelayers.io')           | [![Build Status](https://travis-ci.org/unb-libraries/docker-apache-php.svg?branch=alpine)](https://travis-ci.org/unb-libraries/docker-apache-php)      |

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
