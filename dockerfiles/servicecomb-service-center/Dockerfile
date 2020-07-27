FROM centos

LABEL version="1.0" \
      maintainer="jinfanx@github.com"

COPY start-all.sh /var/lib

RUN yum install -y wget && \
    wget -P /opt/pkg https://mirrors.tuna.tsinghua.edu.cn/apache/servicecomb/servicecomb-service-center/1.3.0/apache-servicecomb-service-center-1.3.0-linux-amd64.tar.gz && \
    mkdir -p /opt/lib && \
    tar xzvf /opt/pkg/apache-servicecomb-service-center-1.3.0-linux-amd64.tar.gz -C /opt/lib && \
    mv /var/lib/start-all.sh /opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64 && \
    chmod +x /opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64/start-all.sh && \
    rm -f /opt/pkg/apache-servicecomb-service-center-1.3.0-linux-amd64.tar.gz && \
    mkdir -p /opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64/logs && \
    sed -i "s|^runmod.*=.*$|runmod = prod|g" /opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64/conf/app.conf && \
    sed -i "s|127.0.0.1|0.0.0.0|g" /opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64/conf/app.conf

ENTRYPOINT ["/bin/bash", "/opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64/start-all.sh"]
     
