FROM amd64/centos:7
ENV container docker
RUN yum -y install wget java-11-openjdk; yum clean all
RUN wget https://repo1.maven.org/maven2/org/jblas/jblas/1.2.5/jblas-1.2.5.jar

