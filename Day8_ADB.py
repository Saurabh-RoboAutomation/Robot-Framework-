import subprocess
from subprocess import Popen
def cmd_appium():
 	x=subprocess.run( 'start cmd',shell=True)
 	subprocess.call('appium -p 4723',shell=True)
 	print(x)
cmd_appium ()

def adb_call():
	subprocess.call('adb shell am start -a android.intent.action.CALL -d tel:9893973624',shell=True)
adb_call()