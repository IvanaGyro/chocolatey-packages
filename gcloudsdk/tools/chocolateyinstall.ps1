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

  checksum      = '46556cb95a4d793120a1f28d9abb1ea9fc315298e72b3fabe9f3bfb5b56c105f'
  checksumType  = 'sha256'

  silentArgs    = "/S /allusers"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
