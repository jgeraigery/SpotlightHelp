Param($project_root = "",
      $destkey = "",
      $blobContainer = "")

$secpasswd = ConvertTo-SecureString "$($ENV:AzurePassword)" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("3a99e1f6-7e90-426e-b399-3536f078f9ca", $secpasswd)
Login-AzureRmAccount -ServicePrincipal -Tenant 366f6586-9b69-47bd-bfb3-59845478627f -Credential $mycreds
& "${project_root}\_build\tools\AzCopy.exe /Source:${project_root}\_site /Dest:${blobContainer} /SourceKey:${destkey} /S" 
