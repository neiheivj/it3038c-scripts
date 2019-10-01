var dns = require(`dns`);

function reverseLookup(ip) {
    dns.reverse(ip, function(err,domains){
        if(err!=null){
            console.log("Something is wrong with that IP");
        }
        else {
            domains.forEach(function(domain){
                dns.lookup(domain,function(err, address, family){
                    console.log(domain,`[`,address,`]`);
                });
            });
        }
    });
}
if (process.argv.length <= 2) {
    console.log("USAGE: node " + __filename + " IPADDR");
    process.exit(-1);
}
var ip = process.argv[2]
console.log(`Checking IP: ${ip}`);