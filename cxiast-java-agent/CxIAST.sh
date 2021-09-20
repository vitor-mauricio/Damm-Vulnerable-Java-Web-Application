#!/bin/sh

export CX_OPTS="$CX_EXT_OPTS "


# *** un-comment the line below in case of a standalone app (application without a web-app container). Change 'my-app-name' to set your application name ***
# export CX_OPTS="$CX_OPTS -Dcx.standalone=yes"
# export CX_OPTS="$CX_OPTS -Dcx.appName=my-app-name"

# *** un-comment the lines below when no log is created under cx-logs folder (only agent.log is created). First, try un-comment only the first line. ***
# export CX_OPTS="$CX_OPTS -Daj.weaving.loadersNotToSkip=ALL"
# export CX_OPTS="$CX_OPTS -Daj.weaving.overrideClassLoaderImplementation=true"

# export CX_OPTS="$CX_OPTS -Dcx.safe.mode=yes"
# export CX_OPTS="$CX_OPTS -Dcx.log.level=DEBUG"

# export CX_OPTS="$CX_OPTS -DcxAgentAutoUpgrade=no"

# Uncomment to log each loaded class, the class-loader that loaded it and where it was loaded from
# export CX_OPTS="$CX_OPTS -Dcx.aj.logClassLoading"

# Uncomment to log everything to console
# export CX_OPTS="$CX_OPTS -Dcx.logToConsole=true"

# Uncomment and update to the relevant folder if you want the agent log files and outputs to be written to a folder other than iast.home
# export CX_OPTS="$CX_OPTS -Diast.agent.files='Path/to/folder'"

java -cp "$(dirname -- "$0")/cx-launcher.jar" com.cx.util.launcherprocess.Launcher "$@"
