---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.0"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
---

## General Enhancements

Enhancement | Issue ID
------------|---------
When a monitored system is newer than the versions Spotlight has been tested against, Spotlight will now monitor the system if able. Spotlight will raise an alarm to let you know the version is not yet supported. Some collections may fail because Spotlight has not been tested against the version yet. | SOSSE-3679
There have been some changes to the implementation of **Spotlight Reports**. In the Spotlight Client the Reports tab now differentiates between Default Reports (those shipped with Spotlight) and Custom Reports (those reports you create). The location for Custom Reports has been set to a fixed location. The Report Viewer, Setting button, is no longer required and has been removed. | SOSSE-6416
You can now apply an alarms **configuration template** to a SQL Server connection while it is being created via **Configure Connections** and the **Connection Discovery Wizard**. | SOSSE-6407, SOSSE-6105
Client has connection failures in a TLS 1.2 only environment | SOSSE-6383
You can now click **Help \| About \| View/Change Product License \| Retrieve License Key** to retrieve details of your License Key and contact the licensing team. | SOSSE-6169
The SQL Server, **Top SQL Statements** drilldown has been renamed to **Query Execution Statistics**. This drilldown is likely to be deprecated in the future in favor of the SQL Server \| Workload Analysis drilldown. | DS-428
On the SQL Server \| **SQL Activity drilldown \| Sessions grid** the Status column has been color coded for readability. | SOSSE-5714
For data uploaded to Spotlight Cloud, dummy text replaces string literals to protect privacy information that may be contained in those literals. Data uploaded to the Spotlight Cloud is used in the displays on the Spotlight web site and Spotlight Mobile. | SoSSE-4484
When monitoring a **SQL Server Availability Group**, Spotlight now raises an alarm if the connection address is to a node other than the Availability Listener. Spotlight requires the connection address be to the Availability Listener. | SoSSE-3117
When monitoring SQL Server, the **Support Services drilldown \| SQL Agent Jobs page** now includes the QL agent job SPID. | SOSSE-5638
A new Spotlight Report, **SQL Server Availability**, reports on the availability of given SQL Server instances over a specified time period. It includes uptime statistics and the reason for any downtime periods (as per Spotlight alarms raised). | DS-458
In the Spotlight Client, Spotlight grids, column sorting is now preserved for the life of the Spotlight Client session. | SOSSE-6216
Spotlight's **audit log** of user actions now records Spotlight Client startup and shutdown times | SOSSE-5943
Spotlight's **audit log** of user actions is now tabled in the playback database. The contents of any existing useractionlog.csv file will be written into the table by the upgrade process and then the file will be deleted. |
Spotlight Enterprise supports running a Spotlight Client in an **App-V deployment**. | SOSSE-5815
CLR_MANUAL_EVENT has been added to the list of idle waits. | SOSSE-5739
On **Configure \| Custom Counters**, uncheck 'Override the factory settings' you are now warned if this action will result in loosing configuration data.  | SOSSE-5423
The **SQL Server \| Wait Statistics drilldown** now ignores the following wait types: FT_IFTS_SCHEDULER_IDLE_WAIT, FT_SCHEDULER_IDLE_WAIT, FT_IFTSHC_MUTEX, FT_COMPROWSET_RWLOCK, FT_IFTS_RWLOCK, FT_IFTSHC_MUTEX, FT_IFTSISM_MUTEX, FT_MASTER_MERGE, FT_METADATA_MUTEX | SOSSE-5287
Better handling of deadlocks: When the deadlock is a Intra-Query Parallel Deadlock SQL Server does not put a victim SPID in the deadlock graph however the SPID can be derived from other data in the deadlock graph. We have changed our deadlock code to find that SPID when the victim list is empty thus ensuring a victim SPID is returned for this type of deadlock. | SOSSE-5174
The **SQL Server \| Databases drilldown** has been enhanced for greater usability. Use the Up/Down button to Hide/Show the Databases grid. Move the line between the Databases grid and Database Detils according to which display you want to see more or less of. Find and Save options have been added to the Database Details \| Data Files grid. | SOSSE-4786
The **SQL Server \| Wait Events drilldown** has been enhanced such that you can now move the line between the grid and charts according to which display you want to see more or less of. | SOSSE-4272
On **Configure \| Alarm Actions** with action 'Write the alarm details to a Windows Event log' there is now an informative default 'Message'. The 'Message' field is required; it cannot be empty. | SOSSE-2500


Test VMware collection for vCentre 6.0 | SOSSE-5930





{% include links.html %}
