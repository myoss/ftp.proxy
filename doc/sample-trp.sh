#!/bin/sh

USERNAME=${PROXY_USERNAME:-$PROXY_SERVERLOGIN}

case "$USERNAME" in
	legal)
		SERVERNAME=ftpserver.domain.com
		SERVERLOGIN=ftpuser
		SERVERPASSWD=mypasswd
		;;

	office)
		SERVERNAME=1.2.3.4
		SERVERLOGIN=officeuser
		SERVERPASSWD=officepasswd
		;;

	redirect)
		SERVERNAME=10.20.30.40
		SERVERLOGIN=$PROXY_SERVERLOGIN
		SERVERPASSWD=$PROXY_PASSWD
		;;

	*)
		exit 1;
		;;
esac
echo PROXY_SERVERNAME=$SERVERNAME
echo PROXY_SERVERLOGIN=$SERVERLOGIN
echo PROXY_SERVERPASSWD=$SERVERPASSWD
exit 0
