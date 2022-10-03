#!/bin/bash

allxmlfile=$(ls *.xml)
delete=NonSpin-20Hz.xml
xmlfile=("${allxmlfile[@]/$delete}")

for i in ${xmlfile[@]}; do
    echo ${i}
    filename="${i%.*}"
    echo ${filename}
    
    ligolw_print -t sngl_inspiral -c mass1  -c mass2 ${i} | wc -l
    ligolw_print -t sngl_inspiral -c mass1 -c mass2 ${i} > ${filename}-m1m2.txt
    ligolw_print -t sngl_inspiral -c mchirp -c eta ${i} > ${filename}-mchirpeta.txt
    ligolw_print -t sngl_inspiral -c tau0 -c tau3 ${i} > ${filename}-taus.txt
done