${HOME}/bin/major_group.sh > /dev/null 2>&1
${HOME}/bin/cch_extract.sh > /dev/null 2>&1
${HOME}/bin/get_taxonauth.sh taxon > /dev/null 2>&1
${HOME}/bin/get_taxonauth.sh unverified > /dev/null 2>&1
${HOME}/bin/extract_authorities_nightly.sh > /dev/null 2>&1
foo=`${HOME}/bin/ucjepsextracts2s3.sh 2>&1` ;  echo "$foo" | mail -r "cspace-support@lists.berkeley.edu" -s "rsync2annie" ucjeps-it@berkeley.edu