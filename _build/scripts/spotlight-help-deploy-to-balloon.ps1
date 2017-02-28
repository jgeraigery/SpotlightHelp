Param($project_root = "",
      $destkey = "",
      $blobContainer = "")

$secpasswd = ConvertTo-SecureString "$($ENV:AzurePassword)" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("3a99e1f6-7e90-426e-b399-3536f078f9ca", $secpasswd)
Login-AzureRmAccount -ServicePrincipal -Tenant 366f6586-9b69-47bd-bfb3-59845478627f -Credential $mycreds
& "${project_root}\_build\tools\AzCopy.exe /Source:${project_root}\_site /Dest:${blobContainer} /DestKey:${destkey} /S"
$storageAccountName = "spotlightballoonhelp"
$containerName = "balloonhelp"
# Upload files in data subfolder to Azure.
$localfolder = "${project_root}\_site"
$destfolder = ""
$storageAccountKey = (Get-AzureStorageKey -StorageAccountName $storageAccountName).Primary
$blobContext = New-AzureStorageContext -StorageAccountName $storageAccountName -StorageAccountKey ${destkey}
$files = Get-ChildItem $localFolder foreach($file in $files)
{
  $fileName = "$localFolder\$file"
  $blobName = "$destfolder/$file"
  write-host "copying $fileName to $blobName"
  Set-AzureStorageBlobContent -File $filename -Container $containerName -Blob $blobName -Context $blobContext -Force
}
write-host "All files in $localFolder uploaded to $containerName!"
