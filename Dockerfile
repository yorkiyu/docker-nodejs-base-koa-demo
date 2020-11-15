FROM yorkyucn/docker-nodejs-base-image:latest 

# 暴露端口
EXPOSE 8080

WORKDIR /data/release/docker-nodejs-base-koa-demo

# 创建目录
RUN mkdir -p /data/release/docker-nodejs-base-koa-demo

# 复制源码
COPY . /data/release/docker-nodejs-base-koa-demo

# 安装依赖
RUN cd /data/release/docker-nodejs-base-koa-demo \
    npm i

# 添加开机启动 koa 应用的脚本 
COPY ./koa-start.sh /etc/rc.d/init.d

# 设置脚本可执行权限
RUN chmod +x  /etc/rc.d/init.d/koa-start.sh

# 添加脚本到开机自动启动项目中
RUN cd /etc/rc.d/init.d \
    chkconfig --add koa-start.sh \
    chkconfig koa-start.sh on