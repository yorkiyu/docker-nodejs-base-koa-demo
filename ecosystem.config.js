module.exports = {
    apps : [{
        name: "docker-nodejs-base-koa-demo",
        script: "./app.js",
        instances: 2,
        env: {
            NODE_ENV: "development",
        },
        env_production: {
            NODE_ENV: "production",
        },
        exec_mode: 'cluster',
        combine_logs: true,
        out_file: '/dev/null'
    }]
}
