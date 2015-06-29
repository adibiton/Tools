#!/bin/bash
echo "Setting proxy settings to $1"
if [ $1 == "home" ]
then
    setx HTTP_PROXY "" -m
    setx HTTPS_PROXY "" -m
else
    setx HTTPS_PROXY http://proxy.wdf.sap.corp:8080 -m
    setx HTTP_PROXY http://proxy.wdf.sap.corp:8080 -m
fi
