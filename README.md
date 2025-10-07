# Sparky Nginx MultiSite

Verify Nginx Multisite installation cookbook on Rocky Linux using Sparky

## Cookbook

<https://docs.rockylinux.org/10/guides/web/nginx-multisite/>

## Report example

```console
[task stdout]
15:35:51 :: Last metadata expiration check: 0:35:49 ago on Fri 03 Oct 2025 03:00:02 PM CDT.
15:35:52 :: Dependencies resolved.
15:35:52 :: ==============================================================================================
15:35:52 ::  Package                       Arch    Version                                Repo        Size
15:35:52 :: ==============================================================================================
15:35:52 :: Installing:
15:35:52 ::  nginx                         x86_64  1:1.14.1-9.module+el8.4.0+542+81547229 appstream  566 k
15:35:52 :: Installing dependencies:
15:35:52 ::  gd                            x86_64  2.2.5-7.el8                            appstream  143 k
15:35:52 ::  jbigkit-libs                  x86_64  2.1-14.el8                             appstream   54 k
15:35:52 ::  libXpm                        x86_64  3.5.12-11.el8                          appstream   58 k
15:35:52 ::  libjpeg-turbo                 x86_64  1.5.3-14.el8_10                        appstream  156 k
15:35:52 ::  libtiff                       x86_64  4.0.9-34.el8_10                        appstream  189 k
15:35:52 ::  libwebp                       x86_64  1.0.0-11.el8_10                        appstream  273 k
15:35:52 ::  libxslt                       x86_64  1.1.32-6.3.el8_10                      baseos     249 k
15:35:52 ::  nginx-all-modules             noarch  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   22 k
15:35:52 ::  nginx-filesystem              noarch  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   23 k
15:35:52 ::  nginx-mod-http-image-filter   x86_64  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   34 k
15:35:52 ::  nginx-mod-http-perl           x86_64  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   45 k
15:35:52 ::  nginx-mod-http-xslt-filter    x86_64  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   32 k
15:35:52 ::  nginx-mod-mail                x86_64  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   63 k
15:35:52 ::  nginx-mod-stream              x86_64  1:1.14.1-9.module+el8.4.0+542+81547229 appstream   84 k
15:35:52 :: Enabling module streams:
15:35:52 ::  nginx                                 1.14
15:35:52 ::
15:35:52 :: Transaction Summary
15:35:52 :: ==============================================================================================
15:35:52 :: Install  15 Packages
15:35:52 ::
15:35:52 :: Total download size: 1.9 M
15:35:52 :: Installed size: 5.1 M
15:35:52 :: Downloading Packages:
15:35:52 :: (1/15): jbigkit-libs-2.1-14.el8.x86_64.rpm      162 kB/s |  54 kB     00:00
15:35:52 :: (2/15): libXpm-3.5.12-11.el8.x86_64.rpm         171 kB/s |  58 kB     00:00
15:35:52 :: (3/15): gd-2.2.5-7.el8.x86_64.rpm               353 kB/s | 143 kB     00:00
15:35:52 :: (4/15): libjpeg-turbo-1.5.3-14.el8_10.x86_64.rp 1.9 MB/s | 156 kB     00:00
15:35:52 :: (5/15): libtiff-4.0.9-34.el8_10.x86_64.rpm      2.3 MB/s | 189 kB     00:00
15:35:52 :: (6/15): nginx-all-modules-1.14.1-9.module+el8.4 534 kB/s |  22 kB     00:00
15:35:53 :: (7/15): nginx-filesystem-1.14.1-9.module+el8.4. 397 kB/s |  23 kB     00:00
15:35:53 :: (8/15): libwebp-1.0.0-11.el8_10.x86_64.rpm      1.9 MB/s | 273 kB     00:00
15:35:53 :: (9/15): nginx-1.14.1-9.module+el8.4.0+542+81547 3.6 MB/s | 566 kB     00:00
15:35:53 :: (10/15): nginx-mod-http-image-filter-1.14.1-9.m 623 kB/s |  34 kB     00:00
15:35:53 :: (11/15): nginx-mod-http-perl-1.14.1-9.module+el 932 kB/s |  45 kB     00:00
15:35:53 :: (12/15): nginx-mod-http-xslt-filter-1.14.1-9.mo 495 kB/s |  32 kB     00:00
15:35:53 :: (13/15): nginx-mod-mail-1.14.1-9.module+el8.4.0 981 kB/s |  63 kB     00:00
15:35:53 :: (14/15): nginx-mod-stream-1.14.1-9.module+el8.4 1.6 MB/s |  84 kB     00:00
15:35:53 :: (15/15): libxslt-1.1.32-6.3.el8_10.x86_64.rpm   442 kB/s | 249 kB     00:00
15:35:53 :: --------------------------------------------------------------------------------
15:35:53 :: Total                                           1.4 MB/s | 1.9 MB     00:01
15:35:53 :: Running transaction check
15:35:53 :: Transaction check succeeded.
15:35:53 :: Running transaction test
15:35:53 :: Transaction test succeeded.
15:35:53 :: Running transaction
15:35:54 ::   Preparing        :                                                        1/1
15:35:54 ::   Installing       : libjpeg-turbo-1.5.3-14.el8_10.x86_64                  1/15
15:35:54 ::   Installing       : libxslt-1.1.32-6.3.el8_10.x86_64                      2/15
15:35:54 ::   Running scriptlet: nginx-filesystem-1:1.14.1-9.module+el8.4.0+542+815    3/15
15:35:54 ::   Installing       : nginx-filesystem-1:1.14.1-9.module+el8.4.0+542+815    3/15
15:35:54 ::   Installing       : libwebp-1.0.0-11.el8_10.x86_64                        4/15
15:35:54 ::   Installing       : libXpm-3.5.12-11.el8.x86_64                           5/15
15:35:54 ::   Installing       : jbigkit-libs-2.1-14.el8.x86_64                        6/15
15:35:54 ::   Running scriptlet: jbigkit-libs-2.1-14.el8.x86_64                        6/15
15:35:54 ::   Installing       : libtiff-4.0.9-34.el8_10.x86_64                        7/15
15:35:54 ::   Installing       : gd-2.2.5-7.el8.x86_64                                 8/15
15:35:54 ::   Running scriptlet: gd-2.2.5-7.el8.x86_64                                 8/15
15:35:54 ::   Installing       : nginx-mod-http-perl-1:1.14.1-9.module+el8.4.0+542+    9/15
15:35:54 ::   Running scriptlet: nginx-mod-http-perl-1:1.14.1-9.module+el8.4.0+542+    9/15
15:35:54 ::   Installing       : nginx-mod-http-xslt-filter-1:1.14.1-9.module+el8.4   10/15
15:35:54 ::   Running scriptlet: nginx-mod-http-xslt-filter-1:1.14.1-9.module+el8.4   10/15
15:35:54 ::   Installing       : nginx-mod-mail-1:1.14.1-9.module+el8.4.0+542+81547   11/15
15:35:54 ::   Running scriptlet: nginx-mod-mail-1:1.14.1-9.module+el8.4.0+542+81547   11/15
15:35:54 ::   Installing       : nginx-mod-stream-1:1.14.1-9.module+el8.4.0+542+815   12/15
15:35:54 ::   Running scriptlet: nginx-mod-stream-1:1.14.1-9.module+el8.4.0+542+815   12/15
15:35:54 ::   Installing       : nginx-1:1.14.1-9.module+el8.4.0+542+81547229.x86_6   13/15
15:35:54 ::   Running scriptlet: nginx-1:1.14.1-9.module+el8.4.0+542+81547229.x86_6   13/15
15:35:54 ::   Installing       : nginx-mod-http-image-filter-1:1.14.1-9.module+el8.   14/15
15:35:54 ::   Running scriptlet: nginx-mod-http-image-filter-1:1.14.1-9.module+el8.   14/15
15:35:54 ::   Installing       : nginx-all-modules-1:1.14.1-9.module+el8.4.0+542+81   15/15
15:35:55 ::   Running scriptlet: nginx-all-modules-1:1.14.1-9.module+el8.4.0+542+81   15/15
15:35:55 ::   Verifying        : gd-2.2.5-7.el8.x86_64                                 1/15
15:35:55 ::   Verifying        : jbigkit-libs-2.1-14.el8.x86_64                        2/15
15:35:55 ::   Verifying        : libXpm-3.5.12-11.el8.x86_64                           3/15
15:35:55 ::   Verifying        : libjpeg-turbo-1.5.3-14.el8_10.x86_64                  4/15
15:35:55 ::   Verifying        : libtiff-4.0.9-34.el8_10.x86_64                        5/15
15:35:55 ::   Verifying        : libwebp-1.0.0-11.el8_10.x86_64                        6/15
15:35:55 ::   Verifying        : nginx-1:1.14.1-9.module+el8.4.0+542+81547229.x86_6    7/15
15:35:55 ::   Verifying        : nginx-all-modules-1:1.14.1-9.module+el8.4.0+542+81    8/15
15:35:55 ::   Verifying        : nginx-filesystem-1:1.14.1-9.module+el8.4.0+542+815    9/15
15:35:55 ::   Verifying        : nginx-mod-http-image-filter-1:1.14.1-9.module+el8.   10/15
15:35:55 ::   Verifying        : nginx-mod-http-perl-1:1.14.1-9.module+el8.4.0+542+   11/15
15:35:55 ::   Verifying        : nginx-mod-http-xslt-filter-1:1.14.1-9.module+el8.4   12/15
15:35:55 ::   Verifying        : nginx-mod-mail-1:1.14.1-9.module+el8.4.0+542+81547   13/15
15:35:55 ::   Verifying        : nginx-mod-stream-1:1.14.1-9.module+el8.4.0+542+815   14/15
15:35:55 ::   Verifying        : libxslt-1.1.32-6.3.el8_10.x86_64                     15/15
15:35:55 ::
15:35:55 :: Installed:
15:35:55 ::   gd-2.2.5-7.el8.x86_64
15:35:55 ::   jbigkit-libs-2.1-14.el8.x86_64
15:35:55 ::   libXpm-3.5.12-11.el8.x86_64
15:35:55 ::   libjpeg-turbo-1.5.3-14.el8_10.x86_64
15:35:55 ::   libtiff-4.0.9-34.el8_10.x86_64
15:35:55 ::   libwebp-1.0.0-11.el8_10.x86_64
15:35:55 ::   libxslt-1.1.32-6.3.el8_10.x86_64
15:35:55 ::   nginx-1:1.14.1-9.module+el8.4.0+542+81547229.x86_64
15:35:55 ::   nginx-all-modules-1:1.14.1-9.module+el8.4.0+542+81547229.noarch
15:35:55 ::   nginx-filesystem-1:1.14.1-9.module+el8.4.0+542+81547229.noarch
15:35:55 ::   nginx-mod-http-image-filter-1:1.14.1-9.module+el8.4.0+542+81547229.x86_64
15:35:55 ::   nginx-mod-http-perl-1:1.14.1-9.module+el8.4.0+542+81547229.x86_64
15:35:55 ::   nginx-mod-http-xslt-filter-1:1.14.1-9.module+el8.4.0+542+81547229.x86_64
15:35:55 ::   nginx-mod-mail-1:1.14.1-9.module+el8.4.0+542+81547229.x86_64
15:35:55 ::   nginx-mod-stream-1:1.14.1-9.module+el8.4.0+542+81547229.x86_64
15:35:55 ::
15:35:55 :: Complete!
15:35:55 :: <!DOCTYPE html>
15:35:55 :: <html lang="en">
15:35:55 :: <head>
15:35:55 ::     <meta charset="UTF-8">
15:35:55 ::     <meta http-equiv="X-UA-Compatible" content="IE=edge">
15:35:55 ::     <meta name="viewport" content="width=device-width, initial-scale=1.0">
15:35:55 ::     <title>Site 1</title>
15:35:55 :: </head>
15:35:55 :: <body>
15:35:55 ::     <h1>This is Site 1</h1>
15:35:55 :: </body>
15:35:55 :: </html>
15:35:55 :: <!DOCTYPE html>
15:35:55 :: <html lang="en">
15:35:55 :: <head>
15:35:55 ::     <meta charset="UTF-8">
15:35:55 ::     <meta http-equiv="X-UA-Compatible" content="IE=edge">
15:35:55 ::     <meta name="viewport" content="width=device-width, initial-scale=1.0">
15:35:55 ::     <title>Site 2</title>
15:35:55 :: </head>
15:35:55 :: <body>
15:35:55 ::     <h1>This is Site 2</h1>
15:35:55 :: </body>
15:35:55 :: </html>
15:35:55 :: server {
15:35:55 ::     listen 80;
15:35:55 ::     listen [::]:80;
15:35:55 ::
15:35:55 ::     # virtual server name i.e. domain name #
15:35:55 ::     server_name site1.server.test;
15:35:55 ::
15:35:55 ::     # document root #
15:35:55 ::     root        /usr/share/nginx/test.server.site1/html;
15:35:55 ::
15:35:55 ::     # log files
15:35:55 ::     access_log  /var/log/nginx/www_access.log;
15:35:55 ::     error_log   /var/log/nginx/www_error.log;
15:35:55 ::
15:35:55 ::     # Directives to send expires headers and turn off 404 error logging. #
15:35:55 ::     location ~* ^.+\.(ogg|ogv|svg|svgz|eot|otf|woff|mp4|ttf|rss|atom|jpg|jpeg|gif|png|ico|zip|tgz|gz|rar|bz2|doc|xls|exe|ppt|tar|mid|midi|wav|bmp|rtf)$ {
15:35:55 ::         access_log off; log_not_found off; expires max;
15:35:55 ::     }
15:35:55 :: }
15:35:55 :: server {
15:35:55 ::     listen 80;
15:35:55 ::     listen [::]:80;
15:35:55 ::
15:35:55 ::     # virtual server name i.e. domain name #
15:35:55 ::     server_name site2.server.test;
15:35:55 ::
15:35:55 ::     # document root #
15:35:55 ::     root        /usr/share/nginx/test.server.site2/html;
15:35:55 ::
15:35:55 ::     # log files
15:35:55 ::     access_log  /var/log/nginx/www_access.log;
15:35:55 ::     error_log   /var/log/nginx/www_error.log;
15:35:55 ::
15:35:55 ::     # Directives to send expires headers and turn off 404 error logging. #
15:35:55 ::     location ~* ^.+\.(ogg|ogv|svg|svgz|eot|otf|woff|mp4|ttf|rss|atom|jpg|jpeg|gif|png|ico|zip|tgz|gz|rar|bz2|doc|xls|exe|ppt|tar|mid|midi|wav|bmp|rtf)$ {
15:35:55 ::         access_log off; log_not_found off; expires max;
15:35:55 ::     }
15:35:55 :: }
15:35:55 :: Relabeled /etc/nginx/nginx.conf from unconfined_u:object_r:user_tmp_t:s0 to unconfined_u:object_r:httpd_config_t:s0
[task stderr]
15:36:11 :: Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /usr/lib/systemd/system/nginx.service.
[task run: task.bash - tasks/nginxmulti-test]
[task stdout]
15:36:11 :: enabled
15:36:11 :: active
15:36:11 ::     <h1>This is Site 1</h1>
15:36:11 :: 200
15:36:11 ::     <h1>This is Site 2</h1>
15:36:11 :: 200
[task check]
stdout match (s) <enabled> True
stdout match (s) <active> True
stdout match (s) <^^ \s* "<h1>This is Site 1</h1>"> True
stdout match (s) <200> True
stdout match (s) <^^ \s* "<h1>This is Site 2</h1>"> True
stdout match (s) <200> True
```
