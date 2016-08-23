---
title: Latches Chart
last_updated: July 29, 2016
summary: "The Latches chart shows statistics on Latch requests."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_latches.html
id: SQLActivity_Locks.LatchesChart
folder: ConnectSQLServer
---



A Latch is like a mini-lock that is used internally by SQL Server to serialize access to certain resources. Latches do not participate in transactions and are typically held for very short durations.

The Latches chart shows the following:

## Latch Waits/sec

How many waits for latches occurred per second.

## Total Wait Time (ms)

The total amount of time that latch requests spent waiting during the last second, measured in milliseconds.


{% include links.html %}
