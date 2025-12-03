# Restart Windows Taskbar and related components
# This script will kill the necessary processes and restart them to refresh the taskbar and related UI
# elements after 5 seconds.
# `/f` is used to forcefully terminate the process. 
# `/im` is used to specify the image name of the process. 
#
# Force to kill Shell-UI-related processes
taskkill /f /im sihost.exe /im SearchHost.exe /im StartMenuExperienceHost.exe /im explorer.exe
# Force to restart ctfmon.exe (handles the language bar and text input)
taskkill /f /im ctfmon.exe

timeout /t 5 /nobreak

start explorer.exe & start ctfmon.exe
