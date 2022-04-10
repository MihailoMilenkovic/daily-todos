#!/bin/bash
now="$(date +'%Y-%m-%d')"
currDir=`dirname $0`
echo $currDir
cd "$currDir/logs"

#svaki dan - todo
if test -f "$now.md"; then
    echo "$now.md exists"
else
    cp ./template.md $now.md
fi
textEditor=vim
echo $#
if [ $# -eq 1 ]; then
    textEditor=$1
fi
$textEditor $now.md

# svake nedelje - pregled
if [[ $(date +%u) == 1 ]]
then
    nedelja="week$now.md"
    if test -f "$nedelja"; then
        echo "$nedelja exists"
    else
        cp ./templateWeek.md $nedelja
    fi
    $textEditor $nedelja
fi
