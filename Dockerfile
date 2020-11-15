FROM yorkyucn/docker-nodejs-base-image:latest 

# 暴露端口
EXPOSE 8080

WORKDIR /data/release/docker-nodejs-base-koa-demo

# 创建目录
RUN mkdir -p /data/release/docker-nodejs-base-koa-demo

# 复制源码
COPY . /data/release/docker-nodejs-base-koa-demo

# 设置脚本可执行权限
RUN chmod +x /etc/rc.d/rc.local \
    chmod +x /data/release/docker-nodejs-base-koa-demo/koa-start.sh

# 添加脚本到开机自动启动项目中
RUN echo "/data/release/docker-nodejs-base-koa-demo/koa-start.sh" >> /etc/rc.d/rc.local 