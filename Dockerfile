# 版本信息
# java：latest 为centos官方java运行环境镜像，600多M ,可以提前pull到主机本地
FROM java:latest
MAINTAINER cds "348473573@qq.com"

# 实际上可以配置成变量
ADD demo-0.0.1-SNAPSHOT.jar demo.jar

RUN bash -c 'touch /app.jar'

# 开启内部服务端口 demo 项目端口
EXPOSE 8090

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo.jar"]
