$menuOptions = @{1 = "show processes"
  2 = "show installed apps (slow)"}
$menuOptions

$uInp = Read-Host "Chose the task to run: "

switch($uInp) {
  { $_ -eq 1 } {
    Get-Process | Foreach-Object ProcessName | Group-Object;
    break }
  { $_ -eq 2 } {
    Get-CimInstance -ClassName Win32_Product;
    break }
  default { "Option not found" }
}