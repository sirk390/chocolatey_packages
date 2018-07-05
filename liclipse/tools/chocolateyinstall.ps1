
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.mediafire.com/file/odq93hk4qjlgu1p/liclipse_4.5.2_win32.x86.exe'
$url64      = 'https://www.mediafire.com/file/23er5rucz0ma1do/liclipse_4.5.2_win32.x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'liclipse*'

  checksum      = '9840D99C9B0E31E194B18EFC6E71CAC2C931D110BCFEDF0AB8AB1725FF52F749'
  checksumType  = 'sha256'
  checksum64    = 'B832FA2DF5EC22206F49A1C3C78D48D160689E5AB90D88C892F6347C540ACBAE'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








