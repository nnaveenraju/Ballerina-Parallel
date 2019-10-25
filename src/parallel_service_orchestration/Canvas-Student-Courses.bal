import ballerina/http;
import ballerina/config;

service serviceGetSARData = service {
    resource function onTrigger() {
        http:Client cli = new("https://canvas.instructure.com" + config:getAsString("base_path"));

        http:Request req = new();
        req.addHeader("Authorization",config:getAsString("token"));
        req.addHeader("Content-Type","application/json");
        var results = cli->get("",req);
    
    }
};

