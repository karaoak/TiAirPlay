# TiAirPlay

## Description

An iOS module to add an In-App AirPlay control to your app, to be customized with your own images for the different AirPlay states.

## Quick Start

### Get it [![gitTio](http://gitt.io/badge.png)](http://gitt.io/component/com.karaoak.airplay)
Download the latest distribution ZIP-file and consult the [Titanium Documentation](http://docs.appcelerator.com/titanium/latest/#!/guide/Using_a_Module) on how to install it, or simply use the [gitTio CLI](http://gitt.io/cli):

`$ gittio install com.karaoak.airplay`

Or to demo use: 

`$ gittio demo com.karaoak.airplay`


## Accessing the TiAirPlay Module

To access this module from JavaScript, you would do the following:

    var tiairplay = require("com.karaoak.airplay");

The tiairplay variable is a reference to the Module object.

## Reference
This module only supports the method createView(&lt;default Ti.UI.View + custom module properties&gt;)

To create your custom AirPlay control Titanium view:

	var airplayControl = tiairplay.createView({
        imageNormal: <Your custom image for AirPlay UIControlStateNormal>,
        imageHighlighted: <Your custom image for AirPlay UIControlStateHighlighted>,
        imageSelected: <Your custom image for AirPlay UIControlStateSelected>,
        width:'50dp', height:'50dp',
        //backgroundColor: "red",
        left: 0,
        bottom: 0
    });
    
    win.add(airplayControl);
    
The imageNormal, imageHighlighted, imageSelected properties are optional. The module will otherwise default to the module assets: airplay-normal, airplay-highlighted, airplay-selected.

Please note: when you specify custom images, be sure to omit the .png suffix.

To test if the control is added to your view or window, comment out the backgroundColor property. The AirPlay state images will only appear if an AirPlay device is available in the same WiFi network as your device. For this reason the images by default will not be shown in an iOS Simulator.

## Example
Please see the [example/app.js](https://github.com/karaoak/TiAirPlay/blob/master/example/app.js) for a working example.

## Download
Download the compiled iOS module at:<br />
[https://github.com/karaoak/TiAirPlay/tree/master/iphone/dist](https://github.com/karaoak/TiAirPlay/tree/master/iphone/dist)


## Author

**Frank Eijking**</br>
@karaoak<br />
https://medianique.nl<br />
frank@medianique.nl<br />

## License

    The MIT License (MIT)
    
    Copyright (c) 2015 Frank Eijking

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
