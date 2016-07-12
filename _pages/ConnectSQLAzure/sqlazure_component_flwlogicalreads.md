---
title: Logical Reads
summary: "This flow shows the rate at which pages in the buffer cache are being referenced by SQL connections (logical page reads)."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_component_flwlogicalreads
folder: ConnectSQLAzure
---

Normally the majority of logical reads are satisfied from the cache, but if the required page is not already there then it will be read from disk.
