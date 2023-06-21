#!/bin/bash

INP=../raw/geonames-all-cities-with-a-population-1000.name_country_pop.csv
OUTP=../resources/locations.en.csv

MIN_POP=20000

tail -n +2 $INP | awk -F";" '{ if ($5 >= '$MIN_POP') { printf "%s;%s\n", $1, $3;} }' > $OUTP
