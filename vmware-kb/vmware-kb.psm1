

function get-vmwarekb
{
param(
    $kb = 1003945,
    $language = "Deutsch"
)

$result = Invoke-WebRequest -UseBasicParsing -Uri "https://kb.vmware.com/selfservice/search.do?cmd=displayKC&docType=kc&externalId=$kb"

Write-Output $result
}