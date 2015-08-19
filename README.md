# docker-nginx
该git库为nginx的Dockerfile及nginx的rpm包所需文件。

1、nginx-1.9.3-1.el6.x86_64.rpm 为rpmbuild之后的rpm包；

2、nginx-1.9.3.tar.gz为制作rpm包时所需的源码安装包；

3、nginx.spec文件为打包nginx时所需的spec文件，该文件只是配合Dockerfile封装image来用的，所以并没有写的特别复杂，逻辑上可能有不严谨的地方，默认只安装进去了两个文件，nginx.conf及nginx的service nginx [start|restart|reload|...]等启动脚本，日志切割脚本文件暂未添加进去，有需要的可以自己按需进行修改；

4、supervisor_nginx.conf文件为supervisor管理nginx进程的相关配置文件。
5、Dockerfile中提到的image可以通过如下方式下载：
docker pull xinghen/centos:6
最终生成的docker-nginx镜像下载：
docker  pull xinghen/nginx1.9.3:centos6
