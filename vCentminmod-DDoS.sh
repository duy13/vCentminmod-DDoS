#!/bin/bash
# vCentminmod Antiddos Addon (vddos.voduy.com)
# Thanks you for using!

if [ ! -f /etc/redhat-release ]; then
	echo 'ERROR! Recommend use CentOS Linux release 7 x86_64!
	'
	exit 0
fi

if [ `arch` != "x86_64" ]; then
	echo 'ERROR! Recommend use CentOS Linux release 7 x86_64!
	'
	exit 0
fi

if [ $(id -u) != "0" ]; then
	echo 'ERROR! Please "su root" and try again!
	'
	exit 0
fi

if [ ! -f /usr/local/nginx/conf/nginx.conf ]; then
	echo 'ERROR! Please install Centmin Mod before installing vCentminmod Addon!
	'
	exit 0
fi

ran_it=`cat /dev/urandom | tr -cd 'A-Z0-9' | head -c 5`
ran_nhieu=`cat /dev/urandom | tr -cd 'a-z0-9' | head -c 32`

clear
############################################################
echo '	Welcome to vCentminmod Antiddos Addon:
A small shell script auto Deploy and Use "Testcookie Module" for your Centmin Mod.
								Thanks you for using!


'
echo -n 'Press Enter to continue the installation: '
read Enter

echo '

	Start the installation...

'


mkdir -p /usr/local/nginx/conf/vCentminmod-DDoS/html

curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/aes.min.js.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/aes.min.js --silent
goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "aes.min.js.txt" |awk 'NR==1 {print $1}'`
tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/html/aes.min.js | awk 'NR==1 {print $1}'`
if [ "$goc" != "$tai" ]; then
	rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/html/aes.min.js
	curl -L https://3.voduy.com/vCentminmod-DDoS/aes.min.js.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/aes.min.js --silent
fi

curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/vddosw3data.js.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/vddosw3data.js --silent
goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "vddosw3data.js.txt" |awk 'NR==1 {print $1}'`
tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/html/vddosw3data.js | awk 'NR==1 {print $1}'`
if [ "$goc" != "$tai" ]; then
	rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/html/vddosw3data.js
	curl -L https://3.voduy.com/vCentminmod-DDoS/vddosw3data.js.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/vddosw3data.js --silent
fi


if [ ! -f /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html ]; then
	curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/html/captcha.html.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html --silent
	goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "captcha.html.txt" |awk 'NR==1 {print $1}'`
	tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html | awk 'NR==1 {print $1}'`
	if [ "$goc" != "$tai" ]; then
		rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html
		curl -L https://3.voduy.com/vCentminmod-DDoS/html/captcha.html.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html --silent
	fi
	cp /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html /usr/local/nginx/conf/vCentminmod-DDoS/html/captcha.html.default
fi

if [ ! -f /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html ]; then
	curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/html/5s.html.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html --silent
	goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "5s.html.txt" |awk 'NR==1 {print $1}'`
	tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html | awk 'NR==1 {print $1}'`
	if [ "$goc" != "$tai" ]; then
		rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html
		curl -L https://3.voduy.com/vCentminmod-DDoS/html/5s.html.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html --silent
	fi
	cp /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html /usr/local/nginx/conf/vCentminmod-DDoS/html/5s.html.default
fi

if [ ! -f /usr/local/nginx/conf/vCentminmod-DDoS/html/cookies.html ]; then
	curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/html/cookies.html.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/cookies.html --silent
	goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "cookies.html.txt" |awk 'NR==1 {print $1}'`
	tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/html/cookies.html | awk 'NR==1 {print $1}'`
	if [ "$goc" != "$tai" ]; then
		rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/html/cookies.html
		curl -L https://3.voduy.com/vCentminmod-DDoS/html/cookies.html.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/html/cookies.html --silent
	fi
fi


if [ ! -f /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf ]; then
	curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/5s.conf.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf --silent
	goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "5s.html.txt" |awk 'NR==1 {print $1}'`
	tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf | awk 'NR==1 {print $1}'`
	if [ "$goc" != "$tai" ]; then
		rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf
		curl -L https://3.voduy.com/vCentminmod-DDoS/5s.conf.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf --silent
	fi
	s='%testcookie_secret%' ; r="$ran_nhieu"
	sed -i "s#$s#$r#g" /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf
	cp /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf /usr/local/nginx/conf/vCentminmod-DDoS/5s.conf.default
fi

if [ ! -f /usr/local/nginx/conf/vCentminmod-DDoS/high.conf ]; then
	curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/high.conf.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/high.conf --silent
	goc=`curl -L https://raw.githubusercontent.com/duy13/vCentminmod-DDoS/master/md5sum.txt --silent | grep "5s.html.txt" |awk 'NR==1 {print $1}'`
	tai=`md5sum /usr/local/nginx/conf/vCentminmod-DDoS/high.conf | awk 'NR==1 {print $1}'`
	if [ "$goc" != "$tai" ]; then
		rm -rf /usr/local/nginx/conf/vCentminmod-DDoS/high.conf
		curl -L https://3.voduy.com/vCentminmod-DDoS/high.conf.txt -o /usr/local/nginx/conf/vCentminmod-DDoS/high.conf --silent
	fi
	s='%testcookie_secret%' ; r="$ran_nhieu"
	sed -i "s#$s#$r#g" /usr/local/nginx/conf/vCentminmod-DDoS/high.conf
	cp /usr/local/nginx/conf/vCentminmod-DDoS/high.conf /usr/local/nginx/conf/vCentminmod-DDoS/high.conf.default
fi


cd /svr-setup
rm -rf testcookie-nginx-module-master
curl -L https://github.com/kyprizel/testcookie-nginx-module/archive/master.zip -o master.zip --silent
unzip master.zip
rm -rf master.zip


cp /usr/local/src/centminmod/inc/nginx_upgrade.inc /usr/local/src/centminmod/inc/nginx_upgrade.inc.bak.$ran_it
s='--with-http_gzip_static_module' ; r='--with-http_gzip_static_module --add-module=../testcookie-nginx-module-master'
sed -i "s#$s#$r#g" /usr/local/src/centminmod/inc/nginx_upgrade.inc


echo '

	Successfully installed! Do not forget to run:

"cd /usr/local/src/centminmod; ./centmin.sh" and "Option 4" to update!


'

