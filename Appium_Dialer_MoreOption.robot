*** Settings ***

Library  AppiumLibrary
Library  Collections
#Suite setup  open dialer


*** Variables ***

${Appium_server}  http://localhost:4723/wd/hub
${Device_name}  RZ8N108RVMD
${platfrom}  10
${appPackage}  com.samsung.android.dialer
${appActivity}  com.samsung.android.dialer.DialtactsActivity


*** Test Cases ***

Open_Dialer
  open dialer

Open_More_Options
  dialer moreOption and settings


*** Keywords ***

open dialer
  ${androiddriver}=  Open Application  ${Appium_server}  platformName=android  deviceName=${Device_name}  platformVersion=${platfrom}  appPackage=${appPackage}  appActivity=${appActivity}

dialer moreOption and settings
  Click Element    xpath=//android.widget.ImageView[@content-desc="More options"]
#  Click Element    id=More options
  Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.TextView
