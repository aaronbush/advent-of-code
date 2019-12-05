#!/bin/bash

# fuel by mass
for x in `cat p1.input`
do
	echo $x | awk -f p1.awk
done > p1.fuel.by.mass

# fuel for each masses fuel
for x in `cat p1.fuel.by.mass` 
do
	echo $x | awk -f p2.awk
done > p2.fuel.by.mass

cat p1.fuel.by.mass p2.fuel.by.mass | paste -sd+ - | bc
