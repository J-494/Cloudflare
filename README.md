# Cloudflare Knowledge 
Just a record of the findings in Cloudflare

## Cloudflare Teams Warp with Service Auth (Windows)
* 1 Download Cloudflare Warp
  * Download either from https://1.1.1.1/ or Go to Cloudflare Zero Trust > Settings > Downloads > Download the WARP Client
  * ![image](https://github.com/J-494/Cloudflare/assets/68671153/cb2d7a76-8680-4622-9436-73f95a5761f8)
* 2 Create Service Auth
  * Go to Cloudflare Zero Trust > Access > Service Auth > Generate Token > Saved the Token in notepad or somewhere.
  * Picture Reference of Token Details ![image](https://github.com/J-494/Cloudflare/assets/68671153/2c1ad240-5578-4d5c-bd8a-2b93efe9aa05)
* 3 Change Device Enrollment Rules
  * Go to Cloudflare Zero Trust > Settings > WARP Client > Device enrollment permissions
  * Add the rule > change the Rule Action to Service Auth
  * Select Service Token in Include Selector and put the Value of the Token that created
  * Picture Reference of Device ENrollment Rules Configuration ![image](https://github.com/J-494/Cloudflare/assets/68671153/996d2415-0202-44c3-85f7-2a456adc137b)
* 4 Confirm Team Domain
  * Go to Cloudflare Zero Trust > Settings > Custom Pages
  * Picture Reference of Team Domain ![image](https://github.com/J-494/Cloudflare/assets/68671153/536a983b-ba07-4351-bee7-87cf549a3303)
* 5 Used the batch file in this repo named [Teams_Warp_Service_Auth.bat](https://github.com/J-494/Cloudflare/blob/main/Teams_Warp_Service_Auth.bat)
