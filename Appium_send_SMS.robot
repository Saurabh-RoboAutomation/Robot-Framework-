*** Settings ***

Library  AppiumLibrary
Library  Collections

*** Variables ***

${Appium_server}  http://localhost:4723/wd/hub
${Device_name}  RZ8N108RVMD
${platfrom}  10
${appPackage}  com.samsung.android.messaging
${appActivity}  com.android.mms.ui.ConversationComposer

*** Test Cases ***

Open_messaging_app
  open sms

Sending a message
  Type and send a message

*** Keywords ***

open sms
  ${androiddriver}=  Open Application  ${Appium_server}  platformName=android  deviceName=${Device_name}  platformVersion=${platfrom}  appPackage=${appPackage}  appActivity=${appActivity}

  sleep  2s

Type and send a message
  Click Element    id=android:id/sem_tip_popup_message
  sleep  3s
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup[2]/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.LinearLayout[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.RelativeLayout[1]/android.widget.TextView
  Input Text  id=android:id/navigationBarBackground    9584040449
  Click Element    id=com.samsung.android.messaging:id/message_edit_text
  Input Text    id=com.samsung.android.messaging:id/message_edit_text    hello
  Click Element    id=com.samsung.android.messaging:id/selected_send_button1
