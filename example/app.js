// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
    backgroundColor:'#fff'
});
var label = Ti.UI.createLabel();
win.add(label);

//module tests here...
if (Ti.Platform.name == "iPhone OS") {
    
    var tiairplay = require('com.karaoak.airplay');
    Ti.API.info("module is => " + tiairplay);
    
    label.text = tiairplay.example();
     
    var airplayControl = tiairplay.createView({
        imageNormal: "images/airplay/airplay-normal",
        imageHighlighted: "images/airplay/airplay-highlighted",
        imageSelected: "images/airplay/airplay-selected",
        width:'50dp', height:'50dp',
        //backgroundColor: "red",
        left: 0,
        bottom: 0
    });

    win.add(airplayControl);
}

win.open();

