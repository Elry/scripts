#!/bin/bash

## string
var="abc"
echo $var
echo "$var"
echo ${var}
echo ${#var} # str length
echo ${Foo:-"default text value when missing/empty"} # empty string fallback

## array
arr=(one two three four)
echo $arr # first element only
echo ${arr[@]} # all elements

for i in "${arr[@]}"; do
  echo "$i"
done

## terminal commands
echo "pwd: $(pwd)"; echo "pwd: $PWD"
clear

## prints all aliases
alias -p

## conditional execution
echo "abc" || echo "runs if first command fails"
echo "abc" && echo "runs if first command executes"

## regex
email="a@bc.com"
if [[ "$email" ~= [a-z]+@[a-z]{2,}\.(com|net|org) ]]
  then echo "valid"
fi

## expression
echo $(( 10 + 5 )) # output: 15

## stdin, stdout, stderr
# > == overwrite / >> == append
python a.py < "input.in" # content of input.in as input for a.py
python a.py > "output.out" # output of input.in as input for output.out
python a.py 2> "log.txt"  # outputs errors only to a txt file
python a.py > "log.txt" 2>&1 # outputs AND erros as input for log.txt
python a.py > /dev/null 2>&1 # all outputs sent to a THE Emptiness (no output)
python a.py >> "out.out" 2>> "err.err" # appends instead of overwriting

## control & loop
case "$Var" in
  0) echo "there is zero";;
  1) echo "there is one";;
  2) echo "there is 2";;
esac

for var in {1..3}
do echo "$var" done

for ((a=1; a <= 3; a++))
do echo $a done

#looping on files
for var in file0 file1
do cat "$var" done

while [true]
do
  echo "looping...."
  break
done

## functions
function abc(){
  echo "args: $@"
  echo "args...: $1, $2"
  return 0
}
# function call
abc arg0 arg1

cdb(){
  echo "declaration"
  return 0
}
cdb

