import subprocess
import time

def adb_call():
	subprocess.call('adb shell am start -a android.intent.action.CALL -d tel:123',shell=True)
adb_call()

def adb_EndCall():
	time.sleep(5)
	subprocess.call('adb shell input keyevent 6',shell=True)
adb_EndCall()

