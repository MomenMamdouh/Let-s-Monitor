#!/bin/bash
echo 
echo 
echo This script will allow you to create an init.d startup script for YAMon3 instead of using regular nvram commands.
echo Entware must be installed.
echo ========================================================================
echo 

echo By default, YAMon3 will delay for 10 seconds before starting.
echo Some older/slower routers may require extra time
echo 
read -p 'Enter the start-up delay:' delay


cat > /opt/etc/init.d/S99yamon3 <<EOF
#!/bin/sh

ENABLED=yes
DESC=YAMon3

start() {
    sh /opt/YAMon3/startup.sh $delay
}

stop() {
    sh /opt/YAMon3/shutdown.sh
}

case "\$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    restart)
        stop
        start
        ;;
    *)
        echo "Usage: $0 {start|stop|restart}"
        ;;
esac


. /opt/etc/init.d/rc.func
EOF
echo
echo done..
