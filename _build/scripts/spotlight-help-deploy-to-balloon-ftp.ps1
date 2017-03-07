Param($project_root = "",
      $FTPHost = "",
      $FTPUser = "",
      $FTPPass = "")

#Directory where to find pictures to upload
$UploadFolder = "$project_root\_site"
function uploadFiles($folder, $destFolder)
{
  $folder = $folder.Trim()
  $files = Get-ChildItem $folder
  foreach($file in $files)
  {
    write-host "$file"
    if($file -is [System.IO.FileInfo])
    {
      Write-Output "$file is file"
      $fileName = "$folder\$file"
      if ($destFolder -eq "")
      {
        $blobName = "$file"
      }
      else
      {
        $blobName = "$destFolder/$file"
      }
      Write-Output "copying $fileName to $FTPHost/$blobName"
      $webclient = New-Object System.Net.WebClient
      $webclient.Credentials = New-Object System.Net.NetworkCredential($FTPUser, $FTPPass)
      $uri = New-Object System.Uri("$FTPHost/$blobName")
      $webclient.UploadFile($uri, $fileName)
    }
    else
    {
      $targetFolder = ""
      if ($destFolder -eq "")
      {
        $targetFolder = "$FTPHost/$file"
      } else {
        $targetFolder = "$FTPHost/$destFolder/$file"
      }
      Write-Output "$file is folder"
      Write-Output "create folder:$targetFolder"
      $makeDirectory = [System.Net.WebRequest]::Create($targetFolder);
      $makeDirectory.Credentials = New-Object System.Net.NetworkCredential($FTPUser, $FTPPass);
      $makeDirectory.Method = [System.Net.WebRequestMethods+FTP]::MakeDirectory;
      $makeDirectory.GetResponse();
      #folder created successfully
      Write-Output 'Done'
      if ($destFolder -eq "")
      {
        uploadFiles -folder "$folder\$file" -destFolder $file
      }
      else
      {
        uploadFiles -folder "$folder\$file" -destFolder "$destFolder/$file"
      }
    }
  }
}
uploadFiles -folder $UploadFolder -destFolder ""
