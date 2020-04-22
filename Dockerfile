FROM alpine:3.11.5
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG BITBUCKET_VERSION=7.1.2

ARG CONTAINER_UID=2003
ARG CONTAINER_GID=2003
ARG CONTAINER_USER=bitbucket
ARG CONTAINER_GROUP=bitbucket

ENV BITBUCKET_HOME=/var/atlassian/application-data/bitbucket \
    BITBUCKET_INSTALL=/opt/atlassian/bitbucket \
    BITBUCKET_PROXY_NAME= \
    BITBUCKET_PROXY_PORT= \
    BITBUCKET_PROXY_SCHEME= \
    BITBUCKET_BACKUP_CLIENT=/opt/backupclient/bitbucket-backup-client \
    BITBUCKET_BACKUP_CLIENT_HOME=/opt/backupclient \
    #https://marketplace.atlassian.com/apps/1211500/bitbucket-server-backup-client?hosting=server&tab=overview
    BITBUCKET_BACKUP_CLIENT_VERSION=300600000 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/bin \
    DOCKERIZE_VERSION=0.6.1 \
    MYSQL_DRIVER_VERSION=5.1.48 \
    XMLSTARLET_VERSION=1.6.1-r1

RUN addgroup -g ${CONTAINER_GID} ${CONTAINER_GROUP};\
    adduser -u ${CONTAINER_UID} -G ${CONTAINER_GROUP} -h /home/${CONTAINER_USER} -s /bin/bash -S ${CONTAINER_USER} ;\
    apk add --no-cache \
        ca-certificates \
        gzip \
        curl \
        openssh \
        util-linux \
        git \
        perl \
        bash  \
        ttf-dejavu \
        git-daemon \
        tini \
        openjdk8-jre ;\
    wget -P /tmp/ https://github.com/menski/alpine-pkg-xmlstarlet/releases/download/${XMLSTARLET_VERSION}/xmlstarlet-${XMLSTARLET_VERSION}.apk ;\
    apk add --allow-untrusted /tmp/xmlstarlet-${XMLSTARLET_VERSION}.apk ;\
    wget -O /tmp/bitbucket.tar.gz https://www.atlassian.com/software/stash/downloads/binary/atlassian-bitbucket-${BITBUCKET_VERSION}.tar.gz ;\
    tar zxf /tmp/bitbucket.tar.gz -C /tmp ;\
    mv /tmp/atlassian-bitbucket-${BITBUCKET_VERSION} /tmp/bitbucket ;\
    mkdir -p /opt ${BITBUCKET_HOME} ${BITBUCKET_INSTALL} ;\
    mv /tmp/bitbucket/* ${BITBUCKET_INSTALL}/ ;\
    sed -i -e 's/^# umask/umask/' ${BITBUCKET_INSTALL}/bin/_start-webapp.sh ;\
    rm -f ${BITBUCKET_INSTALL}/lib/mysql-connector-java*.jar ;\
    wget -P /tmp/ http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_DRIVER_VERSION}.tar.gz ;\
    tar xzf /tmp/mysql-connector-java-${MYSQL_DRIVER_VERSION}.tar.gz -C /tmp ;\
    cp -rf /tmp/mysql-connector-java-${MYSQL_DRIVER_VERSION}/mysql-connector-java-${MYSQL_DRIVER_VERSION}.jar ${BITBUCKET_INSTALL}/lib/mysql-connector-java-${MYSQL_DRIVER_VERSION}.jar ;\
    wget -P /tmp/ https://letsencrypt.org/certs/lets-encrypt-x1-cross-signed.der ;\
    wget -P /tmp/ https://letsencrypt.org/certs/lets-encrypt-x2-cross-signed.der ;\
    wget -P /tmp/ https://letsencrypt.org/certs/lets-encrypt-x3-cross-signed.der ;\
    wget -P /tmp/ https://letsencrypt.org/certs/lets-encrypt-x4-cross-signed.der ;\
    keytool -trustcacerts -keystore ${JAVA_HOME}/jre/lib/security/cacerts -storepass changeit -noprompt -importcert -alias letsencryptauthorityx1 -file /tmp/lets-encrypt-x1-cross-signed.der ;\
    keytool -trustcacerts -keystore ${JAVA_HOME}/jre/lib/security/cacerts -storepass changeit -noprompt -importcert -alias letsencryptauthorityx2 -file /tmp/lets-encrypt-x2-cross-signed.der ;\
    keytool -trustcacerts -keystore ${JAVA_HOME}/jre/lib/security/cacerts -storepass changeit -noprompt -importcert -alias letsencryptauthorityx3 -file /tmp/lets-encrypt-x3-cross-signed.der ;\
    keytool -trustcacerts -keystore ${JAVA_HOME}/jre/lib/security/cacerts -storepass changeit -noprompt -importcert -alias letsencryptauthorityx4 -file /tmp/lets-encrypt-x4-cross-signed.der ;\
    wget -O /home/${CONTAINER_USER}/SSLPoke.class https://confluence.atlassian.com/kb/files/779355358/779355357/1/1441897666313/SSLPoke.class ;\
    mkdir -p ${BITBUCKET_BACKUP_CLIENT_HOME} ;\
    wget -O /tmp/bitbucket-backup-distribution.zip https://marketplace.atlassian.com/download/plugins/com.atlassian.stash.backup.client/version/${BITBUCKET_BACKUP_CLIENT_VERSION} ;\
    unzip -q -d ${BITBUCKET_BACKUP_CLIENT_HOME} /tmp/bitbucket-backup-distribution.zip ;\
    mv /opt/backupclient/$(ls /opt/backupclient/) /opt/backupclient/bitbucket-backup-client ;\
    chown -R ${CONTAINER_USER}:${CONTAINER_GROUP} ${BITBUCKET_BACKUP_CLIENT_HOME} ;\
    chmod -R "u=rwX,g=rX,o=rX" ${BITBUCKET_INSTALL}/ ;\
    chown -R ${CONTAINER_USER}:${CONTAINER_GROUP} /home/${CONTAINER_USER} ;\
    chown -R ${CONTAINER_USER}:${CONTAINER_GROUP} ${BITBUCKET_HOME} ;\
    chown -R ${CONTAINER_USER}:${CONTAINER_GROUP} ${BITBUCKET_INSTALL} ;\
    echo PATH=$PATH > /etc/environment ;\
    rm -rf /var/cache/apk/* /tmp/* /var/log/*

COPY data/docker-entrypoint.sh /home/bitbucket/
COPY data/ps_opt_p_enabled_for_alpine.sh /usr/bin/ps
COPY data/dockerwait.sh /usr/bin/dockerwait

RUN chmod +x /home/bitbucket/docker-entrypoint.sh /usr/bin/ps /usr/bin/dockerwait ;\
    chown bitbucket:bitbucket /home/bitbucket/docker-entrypoint.sh /usr/bin/ps /usr/bin/dockerwait

USER bitbucket

WORKDIR /var/atlassian/application-data/bitbucket

VOLUME ["/var/atlassian/application-data/bitbucket"]

EXPOSE 7990 7999

ENTRYPOINT ["/sbin/tini","--","/home/bitbucket/docker-entrypoint.sh"]

CMD ["bitbucket"]
