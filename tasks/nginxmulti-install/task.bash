#!/bin/bash -

set -e

# Install Nginx
sudo dnf install nginx -y

# Reset for idempotency
sudo systemctl disable --now nginx

if [ -f /etc/nginx/nginx.conf.orig ]; then
    sudo cp -af /etc/nginx/nginx.conf.orig /etc/nginx/nginx.conf
fi

if [ -d /etc/nginx/sites-available ]; then
    sudo rm -rf /etc/nginx/sites-available
fi

if [ -d /etc/nginx/sites-enabled ]; then
    sudo rm -rf /etc/nginx/sites-enabled
fi

# Begin

# Create website directories
sudo mkdir -p /usr/share/nginx/test.server.site1/html
sudo mkdir -p /usr/share/nginx/test.server.site2/html

# Create HTML files for site1
cat <<'EOF' | sudo tee /usr/share/nginx/test.server.site1/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site 1</title>
</head>
<body>
    <h1>This is Site 1</h1>
</body>
</html>
EOF

# Create HTML files for site2
cat <<'EOF' | sudo tee /usr/share/nginx/test.server.site2/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Site 2</title>
</head>
<body>
    <h1>This is Site 2</h1>
</body>
</html>
EOF

# Create configuration directories
sudo mkdir -p /etc/nginx/sites-available
sudo mkdir -p /etc/nginx/sites-enabled

# Backup original nginx.conf if not already backed up
if [ ! -f /etc/nginx/nginx.conf.orig ]; then
    sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
fi

# Add sites-enabled include to nginx.conf after conf.d include
sudo sed -i '/include \/etc\/nginx\/conf.d\/\*\.conf;/a\    include /etc/nginx/sites-enabled/*.conf;' /etc/nginx/nginx.conf

# Comment out the default server block (including error pages and all nested blocks)
sudo awk '
/^[[:space:]]*server[[:space:]]*{/ { in_server=1; depth=1; print "#" $0; next }
in_server {
    depth += gsub(/{/, "{") - gsub(/}/, "}");
    print "#" $0;
    if (depth == 0) in_server=0;
    next
}
{ print }
' /etc/nginx/nginx.conf > /tmp/nginx.conf.tmp && sudo mv /tmp/nginx.conf.tmp /etc/nginx/nginx.conf

# Create configuration file for site1
cat <<'EOF' | sudo tee /etc/nginx/sites-available/test.server.site1.conf
server {
    listen 80;
    listen [::]:80;

    # virtual server name i.e. domain name #
    server_name site1.server.test;

    # document root #
    root        /usr/share/nginx/test.server.site1/html;

    # log files
    access_log  /var/log/nginx/www_access.log;
    error_log   /var/log/nginx/www_error.log;

    # Directives to send expires headers and turn off 404 error logging. #
    location ~* ^.+\.(ogg|ogv|svg|svgz|eot|otf|woff|mp4|ttf|rss|atom|jpg|jpeg|gif|png|ico|zip|tgz|gz|rar|bz2|doc|xls|exe|ppt|tar|mid|midi|wav|bmp|rtf)$ {
        access_log off; log_not_found off; expires max;
    }
}
EOF

# Create configuration file for site2
cat <<'EOF' | sudo tee /etc/nginx/sites-available/test.server.site2.conf
server {
    listen 80;
    listen [::]:80;

    # virtual server name i.e. domain name #
    server_name site2.server.test;

    # document root #
    root        /usr/share/nginx/test.server.site2/html;

    # log files
    access_log  /var/log/nginx/www_access.log;
    error_log   /var/log/nginx/www_error.log;

    # Directives to send expires headers and turn off 404 error logging. #
    location ~* ^.+\.(ogg|ogv|svg|svgz|eot|otf|woff|mp4|ttf|rss|atom|jpg|jpeg|gif|png|ico|zip|tgz|gz|rar|bz2|doc|xls|exe|ppt|tar|mid|midi|wav|bmp|rtf)$ {
        access_log off; log_not_found off; expires max;
    }
}
EOF

# Create symbolic links in sites-enabled
sudo ln -sf /etc/nginx/sites-available/test.server.site1.conf /etc/nginx/sites-enabled/test.server.site1.conf
sudo ln -sf /etc/nginx/sites-available/test.server.site2.conf /etc/nginx/sites-enabled/test.server.site2.conf

# Fix SELinux contexts
sudo restorecon -Rv /etc/nginx/

# Enable and start nginx
sudo systemctl enable --now nginx

sleep 15
