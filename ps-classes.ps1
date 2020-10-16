class Instrument{
  [string]$type
  [string]$family
}

$instrument = [Instrument]::new()
$instrument.type = "String instrument"
$instrument.family = "Flutes"

# $instrument

class Guitar : Instrument{
    [string]$brand
    [string]$subType
    [string]$modelType
    [string]$modelNumber
}

$mGuitar = [Guitar]::new()
$mGuitar.brand = "Memphis"
$mGuitar.modelNumber = "320"
$mGuitar.subType = "Acoustic"
$mGuitar.modelType = "Presentation"
$mGuitar.family = "guitars"
$mGuitar.type = "strings"

$mGuitar