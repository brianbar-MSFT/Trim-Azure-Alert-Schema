# This script will import the content of a json file which contains the output from an Azure Alert.
# The output was captured by sending the alert to a Logic App as documented here:
# https://www.cloudsma.com/2019/09/logic-apps-examine-azure-monitor-alert-schema/
$rawAlertData = '.\rawAlertData.json'
$sectionToKeep = 'body'
$json = Get-Content $rawAlertData -raw | ConvertFrom-Json
$json.$sectionToKeep |
ConvertTo-Json -Depth 100 |
Out-File .\schemaBody.json