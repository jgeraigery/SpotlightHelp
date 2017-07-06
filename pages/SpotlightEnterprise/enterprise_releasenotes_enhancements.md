---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.0 and 12.0.1"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
readonly: true
---


## Enhancements implemented in Spotlight Enterprise 12.0.1

Enhancement | Issue ID
------------|---------
On the SQL Server \| Workload Analysis drilldown, right click on a SQL statement to view the SQL statement in an external editor - Spotlight now opens the preferred SQL editor on your Spotlight Client host rather than requiring that SQL Server Management Studio be installed. | SOSSE-6676
On the SQL Server \| Databases drilldown, Databases grid and Fragmented indexes grid, click Ctrl+A to 'Select All' rows. Click outside the grid to clear selected rows. | SOSSE-6651
On the SQL Server \| Databases drilldown \| Fragmented indexes page - select multiple indexes to Generate Defragmentation Script for all selected indexes. | SOSSE-2532
Improved user interface design arround previous unfriendly error message: "Unknown Identifier asked for extended events. Please connect." | DS-757


## Enhancements implemented in Spotlight Enterprise 12.0

Enhancement | Issue ID
------------|---------
There have been some changes to the implementation of **Spotlight Reports**. In the Spotlight Client the Reports tab now differentiates between Default Reports (those shipped with Spotlight) and Custom Reports (those reports you create). The location for Custom Reports has been set to a fixed location. The Report Viewer, Setting button, is no longer required and has been removed. | SOSSE-6416
You can now apply an alarms **configuration template** to a SQL Server connection while it is being created via **Configure Connections** and the **Connection Discovery Wizard**. | SOSSE-6407, SOSSE-6105
Client has connection failures in a TLS 1.2 only environment | SOSSE-6383
When creating a SQL Server connection, more support is provided on the **Configure \| Connections** screen when selecting OS Details \| Cluster (Monitor active node). | SOSSE-6376
The **SQL Server \| Databases drilldown \| Fragmentation page** has been enhanced. Data is now sourced from the Playback Database. There is a new **Collect now** button on the drilldown. New parameters Minimum Size and Minimum operations replace the Page count criteria. These parameters can be configured. | SOSSE-6293
In the Spotlight Client, Spotlight grids, **column sorting** is now preserved for the life of the Spotlight Client session. | SOSSE-6216
You can now click **Help \| About \| View/Change Product License \| Retrieve License Key** to retrieve details of your License Key and contact the licensing team. | SOSSE-6169
Spotlight's **audit log** of user actions now records Spotlight Client startup and shutdown times | SOSSE-5943
Spotlight has been tested to successfully monitor **VMware vCentre 6.0**. | SOSSE-5930
Spotlight's **audit log** of user actions is now tabled in the playback database. The contents of any existing useractionlog.csv file will be written into the table by the upgrade process and then the file will be deleted. | SOSSE-5742
Spotlight Enterprise supports running a Spotlight Client in an **App-V deployment**. | SOSSE-5815
CLR_MANUAL_EVENT has been added to the list of **idle waits**. | SOSSE-5739
On the SQL Server \| **SQL Activity drilldown \| Sessions grid** the Status column has been color coded for readability. | SOSSE-5714
When monitoring SQL Server, the **Support Services drilldown \| SQL Agent Jobs page** now includes the SQL agent job SPID. | SOSSE-5638
On **Configure \| Custom Counters**, uncheck 'Override the factory settings' you are now warned if this action will result in loosing configuration data.  | SOSSE-5423
The **SQL Server \| Wait Statistics drilldown** now ignores the following wait types: FT_IFTS_SCHEDULER_IDLE_WAIT, FT_SCHEDULER_IDLE_WAIT, FT_IFTSHC_MUTEX, FT_COMPROWSET_RWLOCK, FT_IFTS_RWLOCK, FT_IFTSHC_MUTEX, FT_IFTSISM_MUTEX, FT_MASTER_MERGE, FT_METADATA_MUTEX | SOSSE-5287
Enhancement to applying alarm configurations from a **Configuration Template** or connection - Turn on / off individual configuration changes before the configurations are applied using the new checkboxes against each item in the Preview Changes dialog. | SOSSE-5268
Better handling of **deadlocks**: When the deadlock is a Intra-Query Parallel Deadlock SQL Server does not put a victim SPID in the deadlock graph however the SPID can be derived from other data in the deadlock graph. We have changed our deadlock code to find that SPID when the victim list is empty thus ensuring a victim SPID is returned for this type of deadlock. | SOSSE-5174
Enhancements to the **SQL Server \| Databases drilldown** where you can now adjust screen real estate by show/hide the Databases grid and drag the line between the grid and charts. We have added to the Database Details \| Data Files grid Find and Save buttons. | SOSSE-5018
New enhanced access to list / edit / delete Spotlight Connections from the **Windows Powershell** / the command line. | SOSSE-4965
The **SQL Server \| Databases drilldown** has been enhanced for greater usability. Use the Up/Down button to Hide/Show the Databases grid. Move the line between the Databases grid and Database Detils according to which display you want to see more or less of. Find and Save options have been added to the Database Details \| Data Files grid. | SOSSE-4786
For **data uploaded to Spotlight Cloud**, dummy text replaces string literals to protect privacy information that may be contained in those literals. Data uploaded to the Spotlight Cloud is used in the displays on the Spotlight web site and Spotlight Mobile. | SoSSE-4484
The **SQL Server \| Wait Events drilldown** has been enhanced such that you can now move the line between the grid and charts according to which display you want to see more or less of. | SOSSE-4272
When a **monitored system** is newer than the versions Spotlight has been tested against, Spotlight will now monitor the system if able. Spotlight will raise an alarm to let you know the version is not yet supported. Some collections may fail because Spotlight has not been tested against the version yet. | SOSSE-3679
When monitoring a **SQL Server Availability Group**, Spotlight now raises an alarm if the connection address is to a node other than the Availability Listener. Spotlight requires the connection address be to the Availability Listener. | SoSSE-3117
On **Configure \| Alarm Actions** with action 'Write the alarm details to a Windows Event log' there is now an informative default 'Message'. The 'Message' field is required; it cannot be empty. | SOSSE-2500
There is now an option to connect to a **VMware ESX Server** using diagnostic server credentials. | SOSSE-2044
DBCC Info messages are now supressed for the **SQL Virtual Log Files Count alarm**. | DS-598
Spotlight accepts the use of PAC proxy files for the Diagnostic Server proxy. | DS-529
The **SQL Server \| Tempdb drilldown \| Usage page** has been enhanced. Bug http://sqlity.net/en/671/deferred-deallocations-of-pages-in-tempdb/ was fixed in SQL Server 2012 Service Pack 2 and 2014 Service Pack 1 by the addition on a new column user_objects_deferred_dealloc_page_count to the DMV sys.dm_db_session_space_usage. This colum has been added to user_objects_dealloc_page_count to get the true deallocation page count. | DS-527
The SQL Server **Wait Events** and **Workload Analysis** drilldowns have been improved to collect more information and consume fewer resources on the monitored instance. | DS-512
A new Spotlight Report, **SQL Server Availability**, reports on the availability of given SQL Server instances over a specified time period. It includes uptime statistics and the reason for any downtime periods (as per Spotlight alarms raised). | DS-458
The SQL Server, **Top SQL Statements** drilldown has been renamed to **Query Execution Statistics**. This drilldown is likely to be deprecated in the future in favor of the SQL Server \| Workload Analysis drilldown. | DS-428
Enhancement to **monitoring mirrored SQL Server connections** - backup alarms apply to the new principal on failover. | DS-425
On monitoring **Availability Group connections**, backup alarms have been enhanced to exclude backup alarms on replicas that are not marked as preferred for backups. | DS-358


{% include links.html %}
