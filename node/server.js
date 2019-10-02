var http = require("http");
var fs = require("fs");
var os = require("os");
var ip = require("ip");
var math = require("math");

http.createServer(function(req, res){
    if (req.url === "/"){
        fs.readFile("./public/index.html", "UTF-8", function(err, body){
            res.writeHead(200, {"Content-Type": "text/html"});
            res.end(body);
        });
    }
    else if (req.url.match("/sysinfo")){
        myHostName=os.hostname();
        myServerUptime = os.uptime();
        myDay=Math.floor(myServerUptime / 86400);
        myHours=Math.floor((myServerUptime - (myDay * 86400)) / 3600);
        myMinutes=Math.floor((myServerUptime - (myDay * 86400) - (myHours * 3600)) / 60);
        mySeconds=Math.floor(myServerUptime - (myDay * 86400) - (myHours * 3600) - (myMinutes * 60));
        myTotalMemory = os.totalmem();
        myFreeMemory = os.freemem();
        myCPUCount = os.cpus().length;
        html=`<!DOCTYPE HTML>
            <HTML>
                <HEAD>
                    <title> Node JS Sysinfo </title>
                </head>
                <body>
                    <p> Hostname: ${myHostName} </p>
                    <p> IP: ${ip.address()} </p>
                    <p> Server Uptime: Days: ${myDay}, Hours: ${myHours}, Minutes: ${myMinutes}, Seconds: ${mySeconds}</p>
                    <p> Total Memory: ${Math.floor(myTotalMemory / 1048576)} MB</p>
                    <p> Free Memory: ${Math.floor(myFreeMemory / 1048576)} MB</p>
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