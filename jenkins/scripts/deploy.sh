# #!/usr/bin/env sh

# set -x
# docker run -d -p 80:80 --name my-apache-php-app -v E:\\ict2216\\w8sel\\jenkins-php-selenium-test\\src:/var/www/html php:7.2-apache
# sleep 1
# set +x

# echo 'Now...'
# echo 'Visit http://192.168.10.250 to see your PHP application in action.'

#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v /e/ict2216/w8sel/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://192.168.10.250 to see your PHP application in action.'
