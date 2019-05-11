#!/bin/bash

echo "Snoop Dodge"

# KillAllList() {
# area=$(($1 * $2))
# echo "Area is : $area"
# }

applications=("edpa" "SymDaemon" "SymSharedSettingsd" "SymUIAgent" "TaniumClient" "TaniumRecorder" "TaniumEndpointIndex" "jamf" "jamfAgent" "JamfDaemon" "CrashPlanService" "Citrix Service Record Application" "Citrix Workspace Authentication")
applicationsRegExp=""

for a in ${applications[@]}; do
  applicationsRegExp+="$a|"
done

# Remove last "|"
applicationsRegExp=${applicationsRegExp%?}

echo "ALL: $applicationsRegExp"

sudo pkill -9 -f "/${applicationsRegExp}/"

# KillAllList 10 20

# sleep 1
