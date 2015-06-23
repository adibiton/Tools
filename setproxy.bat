@echo off
echo Setting proxy setting to %1
IF "%1" == "home" ( 
	REM  Git set http proxy 
	git config --global --remove-section http
	REM echo git http proxy
	REM  git config --get-all http.proxy
	
	REM  Git set https proxy	
    git config --global --remove-section https 
	REM echo git https proxy
	REM git config --get-all https.proxy
	
	REM  NPM set http proxy
	npm config rm proxy	
	REM echo npm http proxy
	REM npm config get proxy

	REM  NPM set https proxy
	npm config rm https-proxy
	REM echo npm http proxy
	REM npm config get https-proxy

	REM Set Bower proxy
	setx HTTPS_PROXY "" -m
	setx HTTP_PROXY "" -m
	 
	)
IF "%1" == "work" ( 
	REM  Git set http proxy 
	git config --global http.proxy http://proxy.wdf.sap.corp:8080
	REM echo git http proxy
	REM  git config --get-all http.proxy
	
	REM  Git set https proxy	
    git config --global https.proxy http://proxy.wdf.sap.corp:8080
	REM echo git https proxy
	REM git config --get-all https.proxy
	
	REM  NPM set http proxy
	npm config set proxy http://proxy.wdf.sap.corp:8080
	REM echo npm http proxy
	REM npm config get proxy

	REM  NPM set https proxy
	npm config set https-proxy http://proxy.wdf.sap.corp:8080
	REM echo npm http proxy
	REM npm config get https-proxy  

	REM Set Bower proxy
	setx HTTPS_PROXY http://proxy.wdf.sap.corp:8080 -m
	setx HTTP_PROXY http://proxy.wdf.sap.corp:8080 -m
) 
