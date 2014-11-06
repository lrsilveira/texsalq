#!/bin/bash

if [ $# -eq 0 ]; then
  file='texsalq-doc'
else
  file=$1
fi

#file='texsalq-doc'
hifen='padraohifen'

pdftex -ini macros/${hifen}.tex
pdftex -fmt=${hifen}.fmt ${file}
bibtex ${file}
pdftex -fmt=${hifen}.fmt ${file}
pdftex -fmt=${hifen}.fmt ${file}
rm ${hifen}.fmt ${hifen}.log ${file}.blg
rm ${file}.aux ${file}.ref ${file}.bbl
#rm ${file}.log 

exit 0
