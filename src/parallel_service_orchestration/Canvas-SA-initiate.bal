import ballerina/io;
import ballerina/task;


public function main() {
    io:println("inside main...");

    //get the top 10 SAR data.. call Worker with the results..
    
    task:Scheduler timer = new(confTimerSAR);

    var sarResp = timer.attach(serviceGetSARData);

}
