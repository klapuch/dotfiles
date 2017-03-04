# PostgreSQL
function pg_import() {
   psql -h localhost -U postgres -W $1 < $2
}
function pg_export() {
    pg_dump -s -h localhost -U postgres -W $1 > $2
}


# Development
function to_php() {
    version=$(php -v)
    number=${version:4:3}
    if [ "$number" == "5.6" ] || [ "$number" == "7.0" ] || [ "$number" == "7.1" ]; then
        if [ $1 = "5.6" ] || [ $1 = "7.0" ] || [ $1 = "7.1" ]; then
            if [ "$number" != $1 ]; then
                sudo a2dismod php$number;sudo a2enmod php$1;sudo service apache2 restart;sudo ln -sfn /usr/bin/php$1 /etc/alternatives/php;sudo ln -sfn /usr/bin/php-cgi$1 /etc/alternatives/php-cgi;sudo ln -sfn /usr/bin/phpdbg$1 /etc/alternatives/phpdbg;

            else
                echo "PHP versions must differ"
            fi
        else
            echo "Desired PHP must be one of 5.6 7.0 or 7.1"
        fi
    else
        echo "Current PHP must be one of 5.6 7.0 or 7.1"
    fi
}


# Current development
function tester() {
    vendor/bin/tester -o console -s -p php-cgi -c Tests/php.ini $1
}


# Shortcuts
function t() {
    tree -L $1
}
