---
title: ﻿Logical Reads
last_updated: July 29, 2016
summary: "This flow shows the rate at which pages in the buffer cache are being referenced by SQL connections (logical page reads)."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_logicalreads.html
id: flwLogicalReads
folder: ConnectSQLServer
---


Normally, the majority of logical reads will be satisfied from the cache, but if the required page is not already there it will be read from disk.

{% include links.html %}
