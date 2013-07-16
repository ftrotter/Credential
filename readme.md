ACO Wrangler Credentialing
===========================

This is a Lavavel 4 app and should have its dependancies properly documented in composer json.

Look in app/sql/ for a version of the starting database...

We really did lots of normalization on the SQL side of this system (you need both MariaDB and MongoDB here)
For the SQL side, it is important to let Maria/MySQL handle the query optimization.. So:

 optimizer_search_depth=0

In /etc/my.conf will make your life easier
