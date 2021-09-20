@echo off

set CX_OPTS=%CX_EXT_OPTS%

rem *** un-comment the line below in case of a standalone app (application without a web-app container). Change 'my-app-name' to set your application name ***
rem set CX_OPTS=%CX_OPTS% -Dcx.standalone=yes
rem set CX_OPTS=%CX_OPTS% -Dcx.appName=my-app-name

rem *** un-comment the lines below when no log is created under cx-logs folder (only agent.log is created). First, try un-comment only the first line. ***
rem set CX_OPTS=%CX_OPTS% -Daj.weaving.loadersNotToSkip=ALL
rem set CX_OPTS=%CX_OPTS% -Daj.weaving.overrideClassLoaderImplementation=true

rem set CX_OPTS=%CX_OPTS% -Dcx.safe.mode=yes
rem set CX_OPTS=%CX_OPTS% -Dcx.log.level=DEBUG

rem set CX_OPTS=%CX_OPTS% -DcxAgentAutoUpgrade=no

rem Uncomment to log each loaded class, the class-loader that loaded it and where it was loaded from
rem set CX_OPTS=%CX_OPTS% -Dcx.aj.logClassLoading

rem Uncomment to log everything to console
rem set CX_OPTS=%CX_OPTS% -Dcx.logToConsole=true

rem Uncomment and update to the relevant folder if you want the agent log files and outputs to be written to a folder other than iast.home
rem set CX_OPTS=%CX_OPTS% -Diast.agent.files='Path/to/folder'

java -cp "%~dsp0\cx-launcher.jar" com.cx.util.launcherprocess.Launcher %*
