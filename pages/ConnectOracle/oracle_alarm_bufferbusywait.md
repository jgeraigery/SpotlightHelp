---
title: ﻿Buffer Busy Wait Alarm
last_updated: July 29, 2016
summary: "The Buffer Busy Wait alarm occurs when a session cannot access a block because it is in use by another session. The two most common causes are insufficient free lists for a table or insufficient rollback segments."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_bufferbusywait.html
id:
folder: ConnectOracle
---


If the Buffer Busy Wait alarm is current, you should look at the **Activity \| Buffer Busy Waits** page. This page shows you the actual number and duration of buffer busy waits, as well as a breakdown of buffer busy waits by buffer type.

If the predominant buffer waits are for data blocks it is likely that you need to create multiple free lists (using the **FREELIST** clause of the **CREATE TABLE** statement) for tables that are subject to very heavy concurrent inserts. Waits for data blocks occur when multiple sessions select the same block from a free list, and concurrently try to insert into that block.

If the leading category is for either **undo header** or **undo block** you may need to create additional rollback segments.


{% include links.html %}
