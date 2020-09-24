FROM centos:7
RUN yum install -y \
 device-mapper-multipath \
 iscsi-initiator-utils \
 xfsprogs \
 nfs-utils \
 net-tools \
 e2fsprogs
ADD ["huawei-csi", "/"]
RUN ["chmod", "+x", "/huawei-csi"]
ENTRYPOINT ["/huawei-csi"]
