FROM yorkyucn/docker-nodejs-base-image:latest 

# 暴露端口
EXPOSE 8080

WORKDIR /data/release/docker-nodejs-base-koa-demo

# 创建目录
RUN mkdir -p /data/release/docker-nodejs-base-koa-demo

# 复制源码
COPY . /data/release/docker-nodejs-base-koa-demo

# service
COPY ./koa.service /etc/systemd/system

# 设置可执行权限
RUN chmod +x /data/release/docker-nodejs-base-koa-demo/koa-start.sh 
RUN chmod +x /etc/systemd/system/koa.service
