Apache Karaf Docker Image
=========================

Karaf version: 4.0.0.M2

Build
-----

```docker build -t asami/karaf-docker .
```

Run
---

Run foreground and interactive.

```docker run -i -t -p 1099:1099 -p 8101:8101 -p 44444:44444 asami/karaf-docker
```

The entrypoint is '/opt/karaf/bin/karaf'

Run background
--------------

```docker run -d -p 1099:1099 -p 8101:8101 -p 44444:44444 --entrypoint /opt/karaf/bin/start asami/karaf-docker
```

Work
----

Run bash to inspect the system for debugging.

```docker run -t -i -p 1099:1099 -p 8101:8101 -p 44444:44444 --entrypoint /bin/bash asami/karaf-docker 
```
