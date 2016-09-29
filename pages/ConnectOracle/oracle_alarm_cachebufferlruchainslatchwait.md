---
title: ﻿Cache Buffer LRU Chains Latch Wait alarm
last_updated: July 29, 2016
summary: "The Cache Buffer LRU Chains Latch Wait alarm occurs when contention for the cache buffer chains latch exceeds a threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_cachebufferlruchainslatchwait.html
id: Home.BufferCache.Cache buffer LRU chain latch wait.alarm
folder: ConnectOracle
---

Two main latches protect data blocks in the buffer cache.

* The **cache buffer LRU chain latch** must be obtained in order to introduce a new block into the buffer cache, and when writing a buffer back to disk.
* The **cache buffer chains latch** is acquired whenever a block in the buffer cache is accessed (pinned).

Contention for these latches usually occurs in a database that has very high I/O rates. It may be possible to reduce contention for the cache buffer LRU chain latch by increasing the size of the buffer cache. Doing this reduces the rate at which new blocks are introduced into the buffer cache.

Reducing contention for the cache buffer chains latch usually requires the reduction of I/O rates by tuning and minimizing the I/O requirements of application SQL.

You can create additional cache buffer LRU chain latches by adjusting the hidden configuration parameter **_DB_BLOCK_LRU_LATCHES**.

You may be able to reduce the load on the cache buffer chain latches by increasing the value of the hidden configuration parameter **_DB_BLOCK_HASH_BUCKETS**.





{% include links.html %}
