#!/bin/sh

## mcafee-oas-enabled-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, Intel Security Professional Services
## E-Mail: thomas.a.ziegmann@intel.com

# This script has been verified to work on McAfee Security for Mac, McAfee Endpoint Protection for Mac, and McAfee Endpoint Security 10 for Mac
# Data Type: String
# Display: Extension Attributes

result=`/usr/bin/defaults read /Library/Preferences/com.mcafee.ssm.antimalware OAS_Enable`

if [ "$result" = "1" ]; then
    echo "<result>Enabled</result>"
else
    echo "<result>Disabled</result>"
fi