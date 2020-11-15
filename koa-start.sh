#!/bin/bash

cd /data/release/docker-nodejs-base-koa-demo
pm2 start ecosystem.config.js --only docker-nodejs-base-koa-demo