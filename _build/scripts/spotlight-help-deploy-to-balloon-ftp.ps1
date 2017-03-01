Param($project_root = "",
      $FTPHost = "",
      $FTPUser = "",
      $FTPPass = "")

#Directory where to find pictures to upload
$UploadFolder = "$project_root\_site\"

function UploadFilesOfFolder($targetfolder, $user, $passwd, $host)
{
  $webclient = New-Object System.Net.WebClient
  $webclient.Credentials = New-Object System.Net.NetworkCredential($user,$passwd)

  $SrcEntries = Get-ChildItem $targetfolder -Recurse
  $Srcfolders = $SrcEntries | Where-Object{$_.PSIsContainer}
  $SrcFiles = $SrcEntries | Where-Object{!$_.PSIsContainer}

  # Create FTP Directory/SubDirectory If Needed - Start
  foreach($folder in $Srcfolders)
  {
      $SrcFolderPath = $targetfolder  -replace "\\","\\" -replace "\:","\:"
      $DesFolder = $folder.Fullnfolderame -replace $SrcFolderPath,$host
      $DesFolder = $DesFolder -replace "\\", "/"
      # Write-Output $DesFolder

      try
      {
          $makeDirectory = [System.Net.WebRequest]::Create($DesFolder);
          $makeDirectory.Credentials = New-Object System.Net.NetworkCredential($user,$passwd);
          $makeDirectory.Method = [System.Net.WebRequestMethods+FTP]::MakeDirectory;
          $makeDirectory.GetResponse();
          #folder created successfully
          # Write-Output $folder
          UploadFilesOfFolder($folder, $user, $passwd, $host);
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
  # Create FTP Directory/SubDirectory If Needed - Stop

  # Upload Files - Start
  foreach($entry in $SrcFiles)
  {
      $SrcFullname = $entry.fullname
      $SrcName = $entry.Name
      $SrcFilePath = $targetFolder -replace "\\","\\" -replace "\:","\:"
      $DesFile = $SrcFullname -replace $SrcFilePath,$host
      $DesFile = $DesFile -replace "\\", "/"
      # Write-Output $DesFile

      $uri = New-Object System.Uri($DesFile)
      $webclient.UploadFile($uri, $SrcFullname)
  }
  # Upload Files - Stop
}

UploadFilesOfFolder($UploadFolder, $FTPUser, $FTPPass, $FTPHost)
