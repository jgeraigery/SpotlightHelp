---
title: Log Files
last_updated: July 29, 2016
summary: "Shows information on the total number of log files in all databases on this SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_logfiles_disk.html
id: mcLogFiles
folder: ConnectSQLServer
---


The disk icon will "fill up" as the total percentage of all log files in all databases increases.

This is the current **Log Used** space in all log files as a percentage of the **current size** of all log files.

Note that the all figures in the disk icons are accumulated over all databases so that a **Percentage Used** figure of around 0% does not necessarily mean that all logs have plenty of space left. Also, some files may be configured to **AutoGrow**, so if this figure is approaching 100% it does not necessarily mean you are almost out of space.

The **Fixed Log File Used** or the **Databases - Dynamic Log File Growths Remaining** alarm is raised when any database is running out of log space.


{% include links.html %}
 