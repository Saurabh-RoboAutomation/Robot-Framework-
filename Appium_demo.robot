*** Settings ***
Documentation  This script opens dialer on phone
Library  AppiumLibrary
Library  Collections

*** Variables ***
${Device_name}  RZ8N108RVMD
${Appium_server}  http://localhost:4723/wd/hub
${appPackage}  com.samsung.android.dialer
${appActivity}  com.samsung.android.dialer.DialtactsActivity
${platfrom}  10
${automationName}  uiautomator2

*** Test Cases ***
Open_Dialer
    setup and open dialer

*** Keywords ***
setup and open dialer
    ${androiddriver}=  Open Application  ${Appium_server}  platformName=android  platformVersion=${platfrom}  deviceName=${Device_name}  automationName=${automationName}  appPackage=${appPackage}  newCommandTimeout=2500  appActivity=${appActivity}