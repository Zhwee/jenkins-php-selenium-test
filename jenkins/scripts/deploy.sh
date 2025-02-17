#!/usr/bin/env sh
set -x

./kill.sh
# Clone the repository
git clone https://github.com/Zhwee/jenkins-php-selenium-test.git
# Change directory to the cloned repository
cd jenkins-php-selenium-test
echo $(pwd)
ls

# Pull the PHP Docker image
docker pull php:7.2-apache

# Run the Docker container
docker run -d -p 80:80 --name my-apache-php-app -v $(pwd)/src:/var/www/html php:7.2-apache
sleep 1
docker ps
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
