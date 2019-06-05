#/!/bin/bash

perl -pe 's/(.*)\;\n/\1Nothing\n/g' $1 | grep ';' | grep -v 'Nothing' | perl -pe 's/;;/;Nothing;/g' | perl -pe 's/\;/\t/g' | awk '{ print $10, $11 }' > thing.txt

#make sure to load R prior to running the script.
Rscript projectscript.R


