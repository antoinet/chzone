#!/bin/bash

dig -y hmac-sha512:tsig-zonedata-ch-public-21-01:stZwEGApYumtXkh73qMLPqfbIDozWKZLkqRvcjKSpRnsor6A6MxixRL6C2HeSVBQNfMW4wer+qjS0ZSfiWiJ3Q== @zonedata.switch.ch +noall +answer +noidnout +onesoa AXFR ch. > ch.txt

grep -P "IN\tNS" ch.txt | awk '{print $1}' | sort | uniq > ch_uniq.txt

git add ch_uniq.txt
git commit -m $(head -1 ch.txt | awk '{print $7}')
git push
