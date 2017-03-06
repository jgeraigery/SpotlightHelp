Param($project_root = "",
      $FTPHost = "",
      $FTPUser = "",
      $FTPPass = "")

#Directory where to find pictures to upload
$UploadFolder = "$project_root\_site\"

function UploadFilesOfFolder($targetfolder, $user, $passwd, $ftphost, $localBase)
{
  $webclient = New-Object System.Net.WebClient
  $webclient.Credentials = New-Object System.Net.NetworkCredential($user,$passwd)
  Write-Output $targetfolder
  $SrcEntries = Get-ChildItem $targetfolder
  $Srcfolders = $SrcEntries | Where-Object{$_.PSIsContainer}
  $SrcFiles = $SrcEntries | Where-Object{!$_.PSIsContainer}

  # Upload Files - Start
  foreach($entry in $SrcEntries)
  {
    Write-Output "target:$entry"
    if ($entry -is [System.IO.FileInfo]) {
      $SrcFullname = $entry.fullname
      $SrcName = $entry.Name
      $SrcFilePath = $targetFolder -replace "\\","\\" -replace "\:","\:"
      $DesFile = $SrcFullname -replace $SrcFilePath,$ftphost
      $DesFile = $DesFile -replace "\\", "/"
      Write-Output $DesFile
      Write-Output $SrcFullname

      $uri = New-Object System.Uri($DesFile)
      $webclient.UploadFile($uri, $SrcFullname)
    } else {
      $SrcFolderPath = $targetfolder  -replace "\\","\\" -replace "\:","\:"
      $SrcFolderPath = $SrcFolderPath + $entry
      $DesFolder = $SrcFolderPath -replace $localBase, $ftphost
      $DesFolder = $DesFolder -replace "\\", "/"
      Write-Output $DesFolder

      try
      {
        $makeDirectory = [System.Net.WebRequest]::Create($DesFolder);
        $makeDirectory.Credentials = New-Object System.Net.NetworkCredential($user,$passwd);
        $makeDirectory.Method = [System.Net.WebRequestMethods+FTP]::MakeDirectory;
        $makeDirectory.GetResponse();
        #folder created successfully
        Write-Output 'Done'

        UploadFilesOfFolder -targetfolder.Fullnfolderame $entry -user $user -passwd $passwd -ftphost $ftphost, -localBase $localBase
      }
      catch [Net.WebException]
      {
          try {
            #if there was an error returned, check if folder already existed on server
            $checkDirectory = [System.Net.WebRequest]::Create($DesFolder);
            $checkDirectory.Credentials = New-Object System.Net.NetworkCredential($user,$passwd);
            $checkDirectory.Method = [System.Net.WebRequestMethods+FTP]::PrintWorkingDirectory;
            $response = $checkDirectory.GetResponse();
            #folder already exists!
          }
          catch [Net.WebException] {
              #if the folder didn't exist
          }
      }
    }
  }
}

UploadFilesOfFolder -targetfolder $UploadFolder -user $FTPUser -passwd $FTPPass -ftphost $FTPHost, -localBase $UploadFolder
