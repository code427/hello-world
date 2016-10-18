#!/bin/sh
check () {
	if [ $? == 0 ] 
	then echo 'success'
	else echo 'fail'
	fi
}

echo -n Versions:' '
cat /proc/version | cut -d' ' -f3,9
	sleep 1
echo 'mounting rootfs as read-only'
	sleep 1

mount -n -o remount -r %root% / 2>/dev/null
	check
	sleep 1

echo 'try writting to /bin/'
	sleep 1

echo 'hello' > /bin/he
	check
	sleep 1

echo 'mounting rootfs as read-write'
	sleep 1

mount -n -o remount -r %root% / 2>/dev/null
	check

echo 'try writting to /bin/'
	sleep 1

echo 'hello' > /bin/he 
	check
	sleep 1



