FROM tomcat:alpine
COPY target/MyAppDemo.war /usr/local/tomcat/webapps
