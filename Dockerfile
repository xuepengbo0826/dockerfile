# 版本信息
#java：latest 为centos官方java运行环境镜像，600多M ,可以提前pull到主机本地
FROM java:latest
MAINTAINER cds "348473573@qq.com"

#实际上可以配置成变量
ADD /var/lib/jenkins/workspace/test/target/demo-0.0.1-SNAPSHOT.jar /usr/local/jar/

RUN mv /usr/local/jar/demo.jar  /usr/local/jar/demo.jar

#开启内部服务端口 cicd-demo 项目端口
EXPOSE 8090

CMD ["java","-jar","/usr/local/jar/demo.jar"]
