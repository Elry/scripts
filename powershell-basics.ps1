# math
[int]$result = 10 / 3
$result

# mod
7 % 3

# power
[Math]::Pow(2,3)

# bool general
!$True
$True
$false -or $false

# equal & not equal
0 -eq $False 
1 -ne 1

# string concat
"sea" + " king"

# strings are char arrays here 2
"sea king"[0]

# get length
("sea king").Length

# binding to output variables
$s = "sea"
$k = "king"

"{0} {1}" -f $s, $k
"$s $k"

# function with parameters
function tst($value){
  if($value){ Write-Output 'does works' }
  else{ Write-Output 'does not' }
}
tst(({}))
tst("")

# getting input
$uInp = Read-Host "give data, please: "
Write-Host "typed: $uInp"

# ternary operators (which do exist in ps >= 7...)
# 1 ? 'aye' : 'nay'

# fixed size (default) arr will not accept additional data, impossible to rm data as well
$dArr = "1", "2", "3"
$dArr

# .net ArrayList class is faster and better to work with
[System.Collections.ArrayList]$array = @()
# also pass values: $array = (1,2,3,4)
$array.GetType()
$array.Add(1) > null
$array.Add(2) > null
$array.Add(3) > null
$array.RemoveAt($array.Count-1)
#self explanatory
$array.Reverse()
# returns position/index of the first match
$array.IndexOf(2)
# first element
$array[0]
# last element
$array[-1]
# check if exists within the array
1 -in $array

# tuples, which are immutable and also from .net class
$tuple = [System.Tuple]::Create(1,2,3,4,5)
$tuple

# hash tables
$aHash = @{"a" = 1
  "b" = 2
  "c" = 3}
$aHash["one"]
$aHash.Keys
$aHash.Values
# check existence inside hash
"c" -in $aHash
# add and rm to hash
$aHash.Add("d", 2)
$aHash.Remove("b")
$aHash

$var = 2
if($var -gt 5){ Write-Output "$var is greater than 5"}
elseif($var -lt 5){ Write-Output "$var is smaller than 5" }
else{ Write-Output "$var equal to 5" }