$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://image.easyeda.com/files/easyeda-windows-ia32-6.4.25.exe'
$url64      = 'https://image.easyeda.com/files/easyeda-windows-x64-6.4.25.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'EasyEDA Desktop*'

  checksum      = 'A9177B231703F50C73F90D6C8742769201DE26E98AF05B8EC1867DEBA7C66AE9'
  checksumType  = 'sha256'
  checksum64    = '8DB53A454B47D87E915F32D68E492E26002B64DEEFA07DC2195B0EB1C5FD3F36'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








