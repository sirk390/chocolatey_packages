
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.mediafire.com/file/dw6b7m6b925c5d7/liclipse_5.0.3_win32.x86.exe'
$url64      = 'http://www.mediafire.com/file/ioua6wk85w5cn76/liclipse_5.0.3_win32.x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'liclipse*'

  checksum      = '7636059ECDD740F7A6077FDC9A97CC7761AAD171239FE903F3B59BA261F74CAC'
  checksumType  = 'sha256'
  checksum64    = 'A9CC37DDDFC4A723D60CE6C195CE6C19A862D276000CE509D5819E6B4A0A15E2'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








