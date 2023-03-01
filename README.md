# chzone

[![update-zone](https://github.com/antoinet/chzone/actions/workflows/update-zone.yml/badge.svg)](https://github.com/antoinet/chzone/actions/workflows/update-zone.yml)

Daily dump of domains in the .ch zone file. By using this repository, you agree to use the zone file data only for combating
cybercrime, scientific and social research or for other purposes in the public interest. See https://www.switch.ch/open-data/.

## Examples

Find the commit in which a particular domain was added/removed
```
$ git log -S chplusplus.ch
commit a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
Author: Antoine Neuenschwander <antoine@schoggi.org>
Date:   Mon Jan 18 00:45:29 2021 +0000

    2021011801
```

Identify the commit for a particular date
```
$ git log --before=2021-01-18 --after=2021-01-17
commit a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
Author: Antoine Neuenschwander <antoine@schoggi.org>
Date:   Mon Jan 18 00:45:29 2021 +0000

    2021011801
```

List domains that were added/removed at that particular date
(-U0 means: 0 context lines in diff for better readability)
```
$ git show -U0 a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
commit a106bf5750bfeed3c0fc413b66c9e7f580b4fd62
Author: Antoine Neuenschwander <antoine@schoggi.org>
Date:   Mon Jan 18 00:45:29 2021 +0000

    2021011801

diff --git a/ch_uniq.txt b/ch_uniq.txt
index 9e20983..1064492 100644
--- a/ch_uniq.txt
+++ b/ch_uniq.txt
@@ -1281 +1280,0 @@
-100percentpure.ch.
@@ -2218 +2216,0 @@
-123juris.ch.
...
```

Show all domains at that particular date
```
$ git show a106bf5750bfeed3c0fc413b66c9e7f580b4fd62:ch_uniq.txt
...
chplanung.ch.
chplus.ch.
chplusapp.ch.
chplusplus.ch.
chpm.ch.
chpneu.ch.
chpo.ch.
chpoint.ch.
chpolitik.ch.
...
```
