---
title: "Linux and macOS Installation Tutorial for the Microsoft Drivers for PHP for SQL Server | Microsoft Docs"
ms.date: 12/12/2019
ms.prod: sql
ms.prod_service: connectivity
ms.custom: ""
ms.technology: connectivity
ms.topic: conceptual
author: "ulvii"
ms.author: "v-ulibra"
manager: v-mabarw
---

# Linux and macOS Installation Tutorial for the Microsoft Drivers for PHP for SQL Server
The following instructions assume a clean environment and show how to install PHP 7.x, the Microsoft ODBC driver, the Apache web server, and the Microsoft Drivers for PHP for SQL Server on Ubuntu 16.04, 18.04, and 19.10, RedHat 7 and 8, Debian 8, 9, and 10, Suse 12 and 15, Alpine 3.11 (experimental), and macOS 10.13, 10.14, and 10.15. These instructions advise installing the drivers using PECL, but you can also download the prebuilt binaries from the [Microsoft Drivers for PHP for SQL Server](https://github.com/Microsoft/msphpsql/releases) GitHub project page and install them following the instructions in [Loading the Microsoft Drivers for PHP for SQL Server](../../connect/php/loading-the-php-sql-driver.md). For an explanation of extension loading and why we do not add the extensions to php.ini, see the section on [loading the drivers](../../connect/php/loading-the-php-sql-driver.md#loading-the-driver-at-php-startup).

These instructions install PHP 7.4 by default. Note that some supported Linux distros default to PHP 7.1 or earlier, which is not supported for the latest version of the PHP drivers for SQL Server -- please see the notes at the beginning of each section to install PHP 7.2 or 7.3 instead.

Also included are instructions for installing the PHP FastCGI Process Manager, PHP-FPM, on Ubuntu. This is needed if using the nginx web server instead of Apache.

## Contents of this page:

- [Installing the drivers on Ubuntu 16.04, 18.04, and 19.10](#installing-the-drivers-on-ubuntu-1604-1804-and-1910)
- [Installing the drivers with PHP-FPM on Ubuntu](#installing-the-drivers-with-php-fpm-on-ubuntu)
- [Installing the drivers on Red Hat 7 and 8](#installing-the-drivers-on-red-hat-7-and-8)
- [Installing the drivers on Debian 8, 9, and 10](#installing-the-drivers-on-debian-8-9-and-10)
- [Installing the drivers on Suse 12 and 15](#installing-the-drivers-on-suse-12-and-15)
- [Installing the drivers on Alpine 3.11](#installing-the-drivers-on-alpine-311)
- [Installing the drivers on macOS High Sierra, Mojave, and Catalina](#installing-the-drivers-on-macos-high-sierra-mojave-and-catalina)

## Installing the drivers on Ubuntu 16.04, 18.04, and 19.10

> [!NOTE]
> To install PHP 7.2 or 7.3, replace 7.4 with 7.2 or 7.3 in the following commands.

### Step 1. Install PHP
```bash
sudo su
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install php7.4 php7.4-dev php7.4-xml -y --allow-unauthenticated
```
### Step 2. Install prerequisites
Install the ODBC driver for Ubuntu by following the instructions on the [Linux installation article](../../connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server.md).

### Step 3. Install the PHP drivers for Microsoft SQL Server
```
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
sudo su
printf "; priority=20\nextension=sqlsrv.so\n" > /etc/php/7.4/mods-available/sqlsrv.ini
printf "; priority=30\nextension=pdo_sqlsrv.so\n" > /etc/php/7.4/mods-available/pdo_sqlsrv.ini
exit
sudo phpenmod -v 7.4 sqlsrv pdo_sqlsrv
```

If there is only one PHP version in the system, then the last step can be simplified to `phpenmod sqlsrv pdo_sqlsrv`.

### Step 4. Install Apache and configure driver loading
```
sudo su
apt-get install libapache2-mod-php7.4 apache2
a2dismod mpm_event
a2enmod mpm_prefork
a2enmod php7.4
exit
```
### Step 5. Restart Apache and test the sample script
```
sudo service apache2 restart
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.

## Installing the drivers with PHP-FPM on Ubuntu

> [!NOTE]
> To install PHP 7.2 or 7.3, replace 7.4 with 7.2 or 7.3 in the following commands.

### Step 1. Install PHP
```bash
sudo su
add-apt-repository ppa:ondrej/php -y
apt-get update
apt-get install php7.4 php7.4-dev php7.4-xml php7.4-fpm -y --allow-unauthenticated
```
Verify the status of the PHP-FPM service by running
```
systemctl status php7.4-fpm
```
### Step 2. Install prerequisites
Install the ODBC driver for Ubuntu by following the instructions on the [Linux installation article](../../connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server.md).

### Step 3. Install the PHP drivers for Microsoft SQL Server
```
sudo pecl config-set php_ini /etc/php/7.3/fpm/php.ini
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
sudo su
printf "; priority=20\nextension=sqlsrv.so\n" > /etc/php/7.4/mods-available/sqlsrv.ini
printf "; priority=30\nextension=pdo_sqlsrv.so\n" > /etc/php/7.4/mods-available/pdo_sqlsrv.ini
exit
sudo phpenmod -v 7.4 sqlsrv pdo_sqlsrv
```
If there is only one PHP version in the system, then the last step can be simplified to `phpenmod sqlsrv pdo_sqlsrv`.

Verify that `sqlsrv.ini` and `pdo_sqlsrv.ini` are located in `/etc/php/7.4/fpm/conf.d/`:
```
ls /etc/php/7.4/fpm/conf.d/*sqlsrv.ini
```
Restart the PHP-FPM service:
```
sudo systemctl restart php7.4-fpm
```

### Step 4. Install and configure nginx
```
sudo apt-get update
sudo apt-get install nginx
sudo systemctl status nginx
```
To configure nginx, you must edit the `/etc/nginx/sites-available/default` file. Add `index.php` to the list below the section that says `# Add index.php to the list if you are using PHP`:
```
# Add index.php to the list if you are using PHP
index index.html index.htm index.nginx-debian.html index.php;
```
Next, modify the section following `# pass PHP scripts to FastCGI server` as follows:
```
# pass PHP scripts to FastCGI server
#
location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/run/php/php7.4-fpm.sock;
}
```
### Step 5. Restart nginx and test the sample script
```
sudo systemctl restart nginx.service
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.

## Installing the drivers on Red Hat 7 and 8

### Step 1. Install PHP

To install PHP on Red Hat 7, run the following:
> [!NOTE]
> To install PHP 7.2 or 7.3, replace remi-php74 with remi-php72 or remi-php73 respectively in the following commands.
```
sudo su
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
subscription-manager repos --enable=rhel-7-server-optional-rpms
yum install yum-utils
yum-config-manager --enable remi-php74
yum update
yum install php php-pdo php-xml php-pear php-devel re2c gcc-c++ gcc
```

To install PHP on Red Hat 8, run the following:
> [!NOTE]
> To install PHP 7.2 or 7.3, replace remi-7.4 with remi-7.2 or remi-7.3 respectively in the following commands.
```
sudo su
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm
dnf install yum-utils
dnf module reset php
dnf module install php:remi-7.4
subscription-manager repos --enable codeready-builder-for-rhel-8-x86_64-rpms
dnf update
dnf install php-pdo php-pear php-devel
```

### Step 2. Install prerequisites
Install the ODBC driver for Red Hat 7 or 8 by following the instructions on the [Linux installation article](../../connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server.md).

### Step 3. Install the PHP drivers for Microsoft SQL Server
```
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
sudo su
echo extension=pdo_sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/30-pdo_sqlsrv.ini
echo extension=sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/20-sqlsrv.ini
exit
```

You can alternatively install from the Remi repo:
```
sudo yum install php-sqlsrv
```
### Step 4. Install Apache
```
sudo yum install httpd
```
SELinux is installed by default and runs in Enforcing mode. To allow Apache to connect to databases through SELinux, run the following command:
```
sudo setsebool -P httpd_can_network_connect_db 1
```
### Step 5. Restart Apache and test the sample script
```
sudo apachectl restart
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.

## Installing the drivers on Debian 8, 9, and 10

> [!NOTE]
> To install PHP 7.2 or 7.3, replace 7.4 in the following commands with 7.2 or 7.3.

### Step 1. Install PHP
```
sudo su
apt-get install curl apt-transport-https
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list
apt-get update
apt-get install -y php7.4 php7.4-dev php7.4-xml php7.4-intl
```
### Step 2. Install prerequisites
Install the ODBC driver for Debian by following the instructions on the [Linux installation article](../../connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server.md). 

You may also need to generate the correct locale to get PHP output to display correctly in a browser. For example, for the en_US UTF-8 locale, run the following commands:
```
sudo su
sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen
```
You may need to add `/usr/sbin` to your `$PATH`, as the `locale-gen` executable is located there.

### Step 3. Install the PHP drivers for Microsoft SQL Server
```
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
sudo su
printf "; priority=20\nextension=sqlsrv.so\n" > /etc/php/7.4/mods-available/sqlsrv.ini
printf "; priority=30\nextension=pdo_sqlsrv.so\n" > /etc/php/7.4/mods-available/pdo_sqlsrv.ini
exit
sudo phpenmod -v 7.4 sqlsrv pdo_sqlsrv
```

If there is only one PHP version in the system, then the last step can be simplified to `phpenmod sqlsrv pdo_sqlsrv`. As with `locale-gen`, `phpenmod` is located in `/usr/sbin` so you may need to add this directory to your `$PATH`.

### Step 4. Install Apache and configure driver loading
```
sudo su
apt-get install libapache2-mod-php7.4 apache2
a2dismod mpm_event
a2enmod mpm_prefork
a2enmod php7.4
```
### Step 5. Restart Apache and test the sample script
```
sudo service apache2 restart
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.

## Installing the drivers on Suse 12 and 15

> [!NOTE]
> In the following instructions, replace `<SuseVersion>` with your version of Suse - if you are using Suse Enterprise Linux 15, it will be SLE_15 or SLE_15_SP1. For Suse 12, use SLE_12_SP4 (or above if applicable). Not all versions of PHP are available for all versions of Suse Linux - please refer to `http://download.opensuse.org/repositories/devel:/languages:/php` to see which versions of Suse have the default version PHP available, or to `http://download.opensuse.org/repositories/devel:/languages:/php:/` to see which other versions of PHP are available for which versions of Suse.

> [!NOTE]
> Packages for PHP 7.4 are not available for Suse 12. 
> To install PHP 7.2, replace the repository URL below with the following URL:
      `https://download.opensuse.org/repositories/devel:/languages:/php:/php72/<SuseVersion>/devel:languages:php:php72.repo`.
> To install PHP 7.3, replace the repository URL below with the following URL:
      `https://download.opensuse.org/repositories/devel:/languages:/php:/php73/<SuseVersion>/devel:languages:php:php73.repo`.

### Step 1. Install PHP
```
sudo su
zypper -n ar -f https://download.opensuse.org/repositories/devel:languages:php/<SuseVersion>/devel:languages:php.repo
zypper --gpg-auto-import-keys refresh
zypper -n install php7 php7-devel php7-openssl
```
### Step 2. Install prerequisites
Install the ODBC driver for Suse by following the instructions on the [Linux installation article](../../connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server.md).

### Step 3. Install the PHP drivers for Microsoft SQL Server
> [!NOTE]
> If you get an error message saying `Connection to 'pecl.php.net:443' failed: Unable to find the socket transport "ssl"`, edit the pecl script at /usr/bin/pecl and remove the `-n` switch in the last line. This switch prevents PECL from loading ini files when PHP is called, which prevents the OpenSSL extension from loading.

```
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
sudo su
echo extension=pdo_sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/pdo_sqlsrv.ini
echo extension=sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/sqlsrv.ini
exit
```
### Step 4. Install Apache and configure driver loading
```
sudo su
zypper install apache2 apache2-mod_php7
a2enmod php7
echo "extension=sqlsrv.so" >> /etc/php7/apache2/php.ini
echo "extension=pdo_sqlsrv.so" >> /etc/php7/apache2/php.ini
exit
```
### Step 5. Restart Apache and test the sample script
```
sudo systemctl restart apache2
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.

## Installing the drivers on Alpine 3.11

> [!NOTE]
> Alpine support is experimental.

> [!NOTE]
> The default version of PHP is 7.3. Alternate versions of PHP are not available from other repositories for Alpine 3.11. You can instead compile PHP from source.

### Step 1. Install PHP
PHP packages for Alpine are found in the `edge/community` repository. Add the following line to `/etc/apt/repositories`, replacing `<mirror>` with the URL of an Alpine repository mirror:
```
http://<mirror>/alpine/edge/community
```
Then run:
```
sudo su
apk update
apk add php7 php7-dev php7-pear php7-pdo php7-openssl autoconf make g++
```
### Step 2. Install prerequisites
Install the ODBC driver for Alpine by following the instructions on the [Linux installation article](../../connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server.md). 

### Step 3. Install the PHP drivers for Microsoft SQL Server
```
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
sudo su
echo extension=pdo_sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/10_pdo_sqlsrv.ini
echo extension=sqlsrv.so >> `php --ini | grep "Scan for additional .ini files" | sed -e "s|.*:\s*||"`/00_sqlsrv.ini
```
You may need to define a locale:
```
export LC_ALL=C
```
### Step 4. Install Apache and configure driver loading
```
sudo apk add php7-apache2 apache2
```
### Step 5. Restart Apache and test the sample script
```
sudo rc-service apache2 restart
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.


## Installing the drivers on macOS High Sierra, Mojave, and Catalina

If you do not already have it, install brew as follows:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

> [!NOTE]
> To install PHP 7.2 or 7.3, replace php@7.4 with php@7.2 or php@7.3 respectively in the following commands.

### Step 1. Install PHP

```
brew tap
brew tap homebrew/core
brew install php@7.4
```
PHP should now be in your path -- run `php -v` to verify that you are running the correct version of PHP. If PHP is not in your path or it is not the correct version, run the following:
```
brew link --force --overwrite php@7.4
```

### Step 2. Install prerequisites
Install the ODBC driver for macOS by following the instructions on the [macOS installation article](../../connect/odbc/linux-mac/install-microsoft-odbc-driver-sql-server-macos.md). 

In addition, you may need to install the GNU make tools:
```
brew install autoconf automake libtool
```

### Step 3. Install the PHP drivers for Microsoft SQL Server
```
sudo pecl install sqlsrv
sudo pecl install pdo_sqlsrv
```
### Step 4. Install Apache and configure driver loading
```
brew install apache2
```
To find the Apache configuration file, `httpd.conf`, for your Apache installation, run 
```
/usr/local/bin/apachectl -V | grep SERVER_CONFIG_FILE
``` 
The following commands append the required configuration to `httpd.conf`. Be sure to substitute the path returned by the preceding command in place of `/usr/local/etc/httpd/httpd.conf`:
```
echo "LoadModule php7_module /usr/local/opt/php@7.4/lib/httpd/modules/libphp7.so" >> /usr/local/etc/httpd/httpd.conf
(echo "<FilesMatch .php$>"; echo "SetHandler application/x-httpd-php"; echo "</FilesMatch>";) >> /usr/local/etc/httpd/httpd.conf
```
### Step 5. Restart Apache and test the sample script
```
sudo apachectl restart
```
To test your installation, see [Testing your installation](#testing-your-installation) at the end of this document.

## Testing Your Installation

To test this sample script, create a file called testsql.php in your system's document root. This is `/var/www/html/` on Ubuntu, Debian, and Redhat, `/srv/www/htdocs` on SUSE, `/var/www/localhost/htdocs` on Alpine, or `/usr/local/var/www` on macOS. Copy the following script to it, replacing the server, database, username, and password as appropriate. On Alpine 3.11, you may also need to specify the **CharacterSet** as 'UTF-8' in the `$connectionOptions` array.
```
<?php
$serverName = "yourServername";
$connectionOptions = array(
    "database" => "yourDatabase",
    "uid" => "yourUsername",
    "pwd" => "yourPassword"
);

// Establishes the connection
$conn = sqlsrv_connect($serverName, $connectionOptions);
if ($conn === false) {
    die(formatErrors(sqlsrv_errors()));
}

// Select Query
$tsql = "SELECT @@Version AS SQL_VERSION";

// Executes the query
$stmt = sqlsrv_query($conn, $tsql);

// Error handling
if ($stmt === false) {
    die(formatErrors(sqlsrv_errors()));
}
?>

<h1> Results : </h1>

<?php
while ($row = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
    echo $row['SQL_VERSION'] . PHP_EOL;
}

sqlsrv_free_stmt($stmt);
sqlsrv_close($conn);

function formatErrors($errors)
{
    // Display errors
    echo "Error information: <br/>";
    foreach ($errors as $error) {
        echo "SQLSTATE: ". $error['SQLSTATE'] . "<br/>";
        echo "Code: ". $error['code'] . "<br/>";
        echo "Message: ". $error['message'] . "<br/>";
    }
}
?>
```
Point your browser to https://localhost/testsql.php (https://localhost:8080/testsql.php on macOS). You should now be able to connect to your SQL Server/Azure SQL database.

## See Also  
[Getting Started with the Microsoft Drivers for PHP for SQL Server](../../connect/php/getting-started-with-the-php-sql-driver.md)

[Loading the Microsoft Drivers for PHP for SQL Server](../../connect/php/loading-the-php-sql-driver.md)

[System Requirements for the Microsoft Drivers for PHP for SQL Server](../../connect/php/system-requirements-for-the-php-sql-driver.md)
