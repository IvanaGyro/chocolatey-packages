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

  checksum      = '7E38BBAA50A3834CBEB085B20EAAF3A03427CA9100070EE8EB9057E3771D9657'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
