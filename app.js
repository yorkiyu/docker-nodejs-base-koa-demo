const Koa = require('koa');
const app = new Koa();

app.use(async ctx => {
  ctx.body = 'Docker-nodejs-base-koa-demo, Hello World';
});

app.listen(8080);