#Проверяем запущен ли Autodesk 2013

$Status = get-service 'Autodesk 2013'
if ($Status.Status -eq 'Running') 
     {Write-host "Running"}
Else 
     {Start-Service -name 'Autodesk 2013'}

#Проверяем запущен ли Echelon Network Agent
$Status_Echelon = Get-Service 'Echelon Network Agent'

if ($Status_Echelon.Status -eq 'Running') 
     {Write-host "Running"}
Else 
     {Start-Service -name 'Echelon Network Agent'}
