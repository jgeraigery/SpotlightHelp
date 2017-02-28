Param($project_root = "",
      $destkey = "",
      $blobContainer = "")

$secpasswd = ConvertTo-SecureString "$($ENV:AzurePassword)" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("3a99e1f6-7e90-426e-b399-3536f078f9ca", $secpasswd)
Login-AzureRmAccount -ServicePrincipal -Tenant 366f6586-9b69-47bd-bfb3-59845478627f -Credential $mycreds

$storageAccountName = "spotlightballoonhelp"
$containerName = "balloonhelp"
# Upload files in data subfolder to Azure.
$localfolder = "${project_root}\_site"
$storageAccountKey = (Get-AzureStorageKey -StorageAccountName $storageAccountName).Primary
$blobContext = New-AzureStorageContext -StorageAccountName $storageAccountName -StorageAccountKey ${destkey}
$files = Get-ChildItem $localFolder
foreach($file in $files)
{
  $fileName = "$localFolder\$file"
  $blobName = "$file"
  write-host "copying $fileName to $blobName"
  Set-AzureStorageBlobContent -File $filename -Container $containerName -Blob $blobName -Context $blobContext -Force
}
write-host "All files in $localFolder uploaded to $containerName!"
