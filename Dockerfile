FROM java
MAINTAINER asami
ENV KARAF_VERSION 4.0.0.M2

RUN wget http://ftp.riken.jp/net/apache/karaf/$KARAF_VERSION/apache-karaf-$KARAF_VERSION.tar.gz; \
    mkdir /opt/karaf; \
    tar --strip-components=1 -C /opt/karaf -xzf apache-karaf-$KARAF_VERSION.tar.gz; \
    rm apache-karaf-$KARAF_VERSION.tar.gz;

EXPOSE 1099 8101 44444
ENTRYPOINT ["/opt/karaf/bin/karaf"]
