var http = require("http");
var fs = require("fs");
var os = require("os");
var ip = require("ip");

http.createServer(function(req, res){
    if (req.url === "/"){
        fs.readFile("./public/index.html", "UTF-8", function(err, body){
            res.writeHead(200, {"Content-Type": "text/html"});
            res.end(body);
        });
    }
    else if (req.url.match("/sysinfo")){
       myHostName=os.hostname();
       myServerUptime = 0;
       myTotalMemory = 0;
       myFreeMemory = 0;
       myCPUCount = 0;
        html=`<!DOCTYPE HTML>
            <HTML>
                <HEAD>
                    <title> Node JS Sysinfo </title>
                </head>
                <body>
                    <p> Hostname: ${myHostName} </p>
                    <p> IP: ${ip.address()} </p>
                    <p> Server Uptime: ${myServerUptime}</p>
                    <p> Total Memory: ${myTotalMemory}</p>
                    <p> Free Memory: ${myFreeMemory}</p>
                    <p> Number of CPUs: ${myCPUCount}</p>
                </body>
            </HTML>
            `
            res.writeHead(404, {"Content-Type": "text/html"});
            res.end(html);
    }
    else {
        res.writeHead(404, {"Content-Type": "text/plain"});
        res.end("404 file not found");
    }
}).listen(3000);



console.log("Server listening on port 3000");