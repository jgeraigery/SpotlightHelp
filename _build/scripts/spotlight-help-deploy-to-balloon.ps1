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

function uploadFiles($folder, $destFolder)
{
  $folder = $folder.Trim()
  $files = Get-ChildItem $folder
  foreach($file in $files)
  {
    write-host "$file"
    if($file -is [System.IO.FileInfo])
    {
      write-host "$file is file"
      $fileName = "$folder\$file"
      if ($destFolder -eq "")
      {
        $blobName = "$file"
      }
      else
      {
        $blobName = "$destFolder/$file"
      }

      write-host "copying $fileName to $blobName"

      If ($fileName.endswith(".html")) {
        $blobProperties = @{"ContentType" = "text/html"};
        Set-AzureStorageBlobContent -File $filename -Container $containerName -Blob $blobName -Properties $blobProperties -Context $blobContext -Force
      } Else {
        Set-AzureStorageBlobContent -File $filename -Container $containerName -Blob $blobName -Context $blobContext -Force
      }
    }
    else
    {
      write-host "$file is folder"
      if ($destFolder -eq "")
      {
        uploadFiles("$folder\$file", $file);
      }
      else
      {
        uploadFiles("$folder\$file" , "$destFolder/$file");
      }
    }
  }
}
uploadFiles($localfolder, "");

write-host "All files in $localFolder uploaded to $containerName!"
