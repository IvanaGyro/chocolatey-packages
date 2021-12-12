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

  checksum      = 'F4FC17452FC89CDEFCF75B66848C949AE0B9DCDFA203EB4F45C9B1E046F4658D'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
