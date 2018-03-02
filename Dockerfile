FROM open-liberty:webProfile7
COPY dependencies/*.jar /opt/ol/wlp/lib/global/
COPY hello-world-1.0-SNAPSHOT.war /opt/ol/wlp/usr/servers/defaultServer/apps
COPY multiply-wsrp-producer-unsecured.ear /opt/ol/wlp/usr/servers/defaultServer/apps
COPY server.xml /config/
