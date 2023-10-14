@echo off
setlocal enabledelayedexpansion

set /p CF_CLIENT_ID=Enter CF-Access-Client-Id: 
set /p CF_CLIENT_SECRET=Enter CF-Access-Client-Secret: 
set /p Teams_Domain=Enter Teams Domain: 

curl -H "CF-Access-Client-Id: %CF_CLIENT_ID%" -H "CF-Access-Client-Secret: %CF_CLIENT_SECRET%" -v https://%Teams_Domain%.cloudflareaccess.com/warp 2>&1 | findstr Location > temp.txt

for /f "delims=" %%a in (temp.txt) do (
    set "line=%%a"    
)

set "output=!line:*< Location: =!"

"C:\Program Files\Cloudflare\Cloudflare WARP\warp-cli.exe" delete
"C:\Program Files\Cloudflare\Cloudflare WARP\warp-cli.exe" teams-enroll-token !output! 
ping 127.0.0.1 -n 6 > nul
"C:\Program Files\Cloudflare\Cloudflare WARP\warp-cli.exe" connect

del temp.txt

endlocal
