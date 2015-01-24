try {
  $package = 'fuelscm'
  $PackageVersion = "0.9.6"
  $url = "http://fuelscm.org/files/releases/Fuel-0.9.6-win32.zip"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}