# Required dependency: Python 3.x
$ErrorActionPreference = 'Stop';

$packageName= 'gcloudsdk'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.google.com/dl/cloudsdk/channels/rapid/GoogleCloudSDKInstaller.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'gcloudsdk*'

  checksum      = '2D69A86F2B1586AFD16269266BB876014EEA173ED79F30E09CBFC874AA9D66CE'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
