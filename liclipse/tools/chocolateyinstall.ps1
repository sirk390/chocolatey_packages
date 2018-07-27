
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.mediafire.com/file/jwpwnn3o91cw74a/liclipse_5.0.1_win32.x86.exe'
$url64      = 'http://www.mediafire.com/file/7e6g7t7xorcpqi7/liclipse_5.0.1_win32.x86_64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'liclipse*'

  checksum      = '90AB31D2F593F00141855E9042051429E46E9850E78BA57FEADD93C5C49C001A'
  checksumType  = 'sha256'
  checksum64    = '83EDCD3D91B92F3762EAEE930991DC084E1FA1ACF95E18FF21B7B5680E24B2F2'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








