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

  checksum      = 'B01C0451E9BDDAC5563D4D7B65466372883A4197D2B79EA98377E7BDCC1DF936'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
