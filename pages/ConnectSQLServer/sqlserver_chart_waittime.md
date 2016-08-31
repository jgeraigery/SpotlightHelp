---
title: Wait Time Chart
last_updated: July 29, 2016
summary: "Use the Wait Timechart to determine if the SQL server is experiencing Tempdb contention."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_waittime.html
id: SQLServer_TempDB_WaitTimeChart
folder: ConnectSQLServer
---


Note that Tempdb contention refers to a bottleneck for threads trying to access allocation pages that are in-memory; it has nothing to do with I/O.

The Tempdb Wait Time chart plots wait contention over time for the resource types:

## PFS

Page free space

## GAM

Global allocation map

## SGAM

Shared global allocation map



{% include links.html %}
