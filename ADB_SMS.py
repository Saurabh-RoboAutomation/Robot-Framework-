import subprocess
import time

from subprocess import Popen
def cmd_appium():
 	x=subprocess.run( 'start cmd',shell=True)
 	subprocess.call('appium -p 4723',shell=True)
 	print(x)
cmd_appium ()


def adb_sms():
	subprocess.call('adb shell am start -a android.intent.action.SENDTO -d sms:123 --es sms_body HELLO! --ez exit_on_sent true',shell=True)
adb_sms()

