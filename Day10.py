import subprocess
from subprocess import Popen

global x
x = input("Enter Port No.:")
print ("Port number is :" + x)

def open_cmd(port):
	
	cmd_prompt = 'cmd'
	command = 'appium -p'
	full_command = cmd_prompt+' '+'/k'+' '+command+' '+str(port)
	print("command is : "+full_command)
	start=Popen(full_command,shell=True)
open_cmd(x)

def adb_call():
	subprocess.run( 'start cmd',shell=True)
	subprocess.call('adb shell am start -a android.intent.action.CALL -d tel:9893973624',shell=True)
adb_call()


  