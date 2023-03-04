#!/bin/bash
 
# don't forget to accept the EULA or it won't boot
while true
do
   /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java -Xms6G -Xmx6G -XX:+UseStringDeduplication -XX:+UseCompressedOops -XX:+UseCodeCacheFlushing -Dfml.readTimeout=180 -Dlog4j2.formatMsgNoLookups=true -Dlog4j.configurationFile=log4j2_17-111.xml -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar nogui
    echo "If you want to completely stop the server process now, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for i in 12 11 10 9 8 7 6 5 4 3 2 1
    do
        echo "$i..."
        sleep 1
    done
    echo "Rebooting now!"
done
