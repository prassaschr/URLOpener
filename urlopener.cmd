@if (@This==@IsBatch) @then
@echo off
rem **** batch zone *********************************************************

    setlocal enableextensions disabledelayedexpansion

    rem Batch file will delegate all the work to the script engine 
    if not "%~1"=="" (
        wscript //E:JScript "%~dpnx0" %1
    )

    rem End of batch area. Ensure batch ends execution before reaching
    rem javascript zone
    exit /b

@end
// **** Javascript zone *****************************************************
// https://tinyurl.com/y78xl52x
// Initialize component to send url queries
var http = WScript.CreateObject('Msxml2.XMLHTTP.6.0');
//var http = Server.CreateObject ("Msxml2.ServerXMLHTTP.6.0");
//var http = Server.CreateObject ("MSXML2.ServerXMLHTTP");


// Retrieve the url parameter
var url = WScript.Arguments.Item(0)

    // Make the request

    http.open("GET", url, false);
    http.send();

    // All done. Exit
    WScript.Quit(0);
