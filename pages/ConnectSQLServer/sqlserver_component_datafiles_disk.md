---
title: Data Files
last_updated: July 29, 2016
summary: "Shows information on the total number of data files in all databases on this SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_datafiles_disk.html
id: mcDataFiles
folder: ConnectSQLServer
---


The disk icon will "fill up" as the total percentage of all **data files** in all databases increases. This is the current **reserved** space in all data files as a percentage of the **current size** of all data files.

Note that all figures in the disk icons are accumulated over all databases so that a **Percentage Used** figure of around 0% does not necessarily mean that all databases have plenty of space left. Also, some files may be configured to **AutoGrow**, so if this figure is approaching 100% it does not necessarily mean you are almost out of space. The **Fixed File Used** or the **Databases - Dynamic File Growths Remaining** alarm is raised when any database is running out of space.

This disk also contains text that shows:

* The total number of **file groups** in all databases in the SQL Server.
* The total number of **data files** in all databases in the SQL Server.
* The total size of all **data files** in all databases in the SQL Server.
* The percentage used of all **data files** in all databases in the SQL Server.


{% include links.html %}
