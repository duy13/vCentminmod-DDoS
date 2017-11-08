vCentminmod DDoS
===================

A small shell script auto Deploy and Use "Testcookie Module" for your Centminmod.

Homepage: http://vddos.voduy.com

Centminmod from: https://centminmod.com/install.html

Testcookie module from: https://github.com/kyprizel/testcookie-nginx-module


----------

Install:
-------------

1. Install Centminmod: https://centminmod.com/install.html

```
yum -y update; curl -O https://centminmod.com/installer.sh && chmod 0700 installer.sh && bash installer.sh
 
```
```
cd /usr/local/src/centminmod 
./centmin.sh

```

2. Install vCentminmod Antiddos Addon: 

```
curl -L -O https://github.com/duy13/vCentminmod-DDoS/raw/master/vCentminmod-DDoS.sh && chmod 700 vCentminmod-DDoS.sh && bash vCentminmod-DDoS.sh

```

3. Re-compile Centminmod Nginx: 

```
cd /usr/local/src/centminmod 
./centmin.sh
 
```
```
"Option 4" to update config: "4).  Nginx Upgrade / Downgrade"
```



Check: 
-------------

```
[root@vDDoS ~]# nginx -V

nginx version: nginx/1.x.x
built by clang 3.4.2 (tags/RELEASE_34/dot2-final)
built with LibreSSL 2.5.5
TLS SNI support enabled
configure arguments: --with-ld-opt='-lrt -ljemalloc -Wl,-z,relro' --with-cc-opt='-m64 -mtune=native -g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wno-sign-compare -Wno-string-plus-int -Wno-deprecated-declarations -Wno-unused-parameter -Wno-unused-const-variable -Wno-conditional-uninitialized -Wno-mismatched-tags -Wno-c++11-extensions -Wno-sometimes-uninitialized -Wno-parentheses-equality -Wno-tautological-compare -Wno-self-assign -Wno-deprecated-register -Wno-deprecated -Wno-invalid-source-encoding -Wno-pointer-sign -Wno-parentheses -Wno-enum-conversion' --sbin-path=/usr/local/sbin/nginx --conf-path=/usr/local/nginx/conf/nginx.conf --with-http_ssl_module --with-http_v2_module --with-http_gzip_static_module --add-module=../testcookie-nginx-module-master --with-http_stub_status_module --with-http_sub_module --with-http_addition_module --with-http_image_filter_module --with-http_secure_link_module --with-http_realip_module --with-http_geoip_module --with-openssl-opt=enable-tlsext --add-module=../ngx-fancyindex-ngx-fancyindex --add-module=../ngx_cache_purge-2.3 --add-module=../nginx-http-concat-master --add-module=../memc-nginx-module-0.17 --add-module=../srcache-nginx-module-0.31 --add-module=../ngx_devel_kit-0.3.0 --add-module=../set-misc-nginx-module-0.31 --add-module=../echo-nginx-module-0.60 --add-module=../redis2-nginx-module-0.13 --add-module=../ngx_http_redis-0.3.7 --add-module=../nginx_upstream_check_module-0.3.0 --add-module=../nginx-module-vts --add-module=../headers-more-nginx-module-0.33 --with-openssl=../libressl-2.5.5 --with-libatomic --with-threads --with-stream --with-stream_ssl_module --with-pcre=../pcre-8.41 --with-pcre-jit

```
```
Option "--add-module=../testcookie-nginx-module-master" is displayed.
```

----------


Using:
-------------
1. Add your website in Centminmod: https://centminmod.com/getstarted.html#2

Example, I added new domain called your-domain.com:

```
Nginx vhost conf path will be at /usr/local/nginx/conf/conf.d/your-domain.com.conf
Nginx SPDY SSL vhost conf path will be at /usr/local/nginx/conf/conf.d/your-domain.com.ssl.conf
Nginx Self-Signed SSL Certificate Directory at /usr/local/nginx/conf/ssl/your-domain.com
Vhost public web root will be at /home/nginx/domains/your-domain.com/public
Vhost log directory will be at /home/nginx/domains/your-domain.com/log 
```

2. Edit your website config (vhost file):
```
nano /usr/local/nginx/conf/conf.d/your-domain.com.conf

...
  root /home/nginx/domains/your-domain.com/public;

  # prevent access to ./directories and files
  location ~ (?:^|/)\. {
   deny all;
  }
 include /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf;
  location / {
 include /usr/local/nginx/conf/vCentminmod-DDoS/on.conf;
 
# block common exploits, sql injections etc
#include /usr/local/nginx/conf/block.conf;

  # Enables directory listings when index file not found
  #autoindex  on;

  # Shows file listing times as local time
  #autoindex_localtime on;

  # Enable for vBulletin usage WITHOUT vbSEO installed
  # More example Nginx vhost configurations at
  # http://centminmod.com/nginx_configure.html
  #try_files    $uri $uri/ /index.php;

  }
...
```

Include config file in folder */usr/local/nginx/conf/vCentminmod-DDoS*
```
Include 5s.conf or high.conf to select the Security Mode.
Include on.conf or off.conf to turn on or off the Security Mode.
```

3. Restart Nginx:

```
service nginx restart
```

Website: 
-------------

![vCentminmod Screenshot](https://lh5.googleusercontent.com/-HDS7MZ3jLrs/WgGnnGzTRCI/AAAAAAAABvs/htWtSvQVglE6tRQX-g5UNie-bcB9fLmugCLcBGAs/s1600/vCentminmod-DDoS.png "vCentminmod DDoS Screenshot 1")

More:
---------------
Document: http://vddos.voduy.com
```
Still in beta, use at your own risk! It is provided without any warranty!
```
