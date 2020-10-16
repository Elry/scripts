$menuOptions = @{1 = "show processes"
  2 = "show installed apps (slow)"
  3 = "show specific process information"
}
$menuOptions

$uInp = Read-Host "Chose the task to run: "

switch($uInp) {
  { $_ -eq 1 } {
    Get-Process | Foreach-Object ProcessName | Group-Object;
    break }
  { $_ -eq 2 } {
    Get-CimInstance -ClassName Win32_Product;
    break }
  { $_ -eq 3 }{
    $pInp = Read-Host "type process name(e.g: chrome, powershell): "
    Get-Process $pInp
  }
  default { "Option not found" }
}