const path = require('path');
const NextServer = require('next/dist/server/next-server').default;

const nextConfig = {
    "distDir": ".next",
    "conf": {
        "output": "standalone"
    }
};

const server = new NextServer({
    hostname: '0.0.0.0',
    port: process.env.PORT || 3000,
    dir: path.join(__dirname),
    dev: false,
    conf: nextConfig.conf
});

const handler = server.getRequestHandler();

require('http').createServer(async (req, res) => {
    try {
        await handler(req, res);
    } catch (err) {
        console.error(err);
        res.statusCode = 500;
        res.end('Internal Server Error');
    }
}).listen(process.env.PORT || 3000, () => {
    console.log(`> Server listening on port ${process.env.PORT || 3000}`);
});
