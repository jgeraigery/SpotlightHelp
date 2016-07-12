---
title: ﻿Tempdb Contention
summary: "This alarm is raised when Tempdb is experiencing contention"
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_tempdb_contention
folder: ConnectSQLServer
---



This alarm is raised when Tempdb is experiencing contention on:

* Page free space (PFS)
* Global allocation map (GAM)
* Shared global allocation map (SGAM)

## When the alarm is raised

Review the balance of logical processors to Temp data files.

Logical Processors | Tempdb data files
-------------------|------------------
Up to 8 logical processors:- | Consider the same number of Tempdb data files as logical processors.
More than 8 logical processors:- | Consider 8 Tempdb data files.

If contention continues then increase the number of data files by multiples of 4 (up to the number of logical processors) until the contention is reduced to acceptable levels or make changes to the workload/code.
