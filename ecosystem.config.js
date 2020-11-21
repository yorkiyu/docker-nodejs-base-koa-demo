module.exports = {
  apps : [{
    name: "docker-nodejs-base-koa-demo",
    script: "/data/release/docker-nodejs-base-koa-demo/app.js",
    instances: 2,
    env: {
      NODE_ENV: "development",
    },
    env_production: {
      NODE_ENV: "production",
    }
  }]
}