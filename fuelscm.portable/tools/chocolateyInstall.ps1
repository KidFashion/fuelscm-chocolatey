try {
  $package = 'fuelscm'
  $PackageVersion = "1.0.0"
  $url = "http://fuelscm.org/files/releases/Fuel-1.0.0-win32.zip"
  $destination = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 

  Install-ChocolateyZipPackage $package -url $url -unzipLocation $destination
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}