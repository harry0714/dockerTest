FROM java
MAINTAINER jack
RUN apt-get install -y wget

RUN cd /

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz

RUN tar zxvf apache-tomcat-8.5.61.tar.gz

CMD ["/apache-tomcat-8.5.61/bin/catalina.sh", "run"]

EXPOSE 8080
