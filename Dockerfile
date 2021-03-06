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
RUN chmod 0777 /etc/systemd/system/koa.service

# 重载配置文件
RUN systemctl daemon-reload

# 启动服务
RUN systemctl start koa 
