---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.3"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
readonly: true
---


## Enhancements implemented in Spotlight Enterprise 12.3

Enhancement | Issue ID
------------|---------
On the SQL Server \| Wait Events drilldown, % of Sample Time replaces the % of Total Available CPU Time metric. The % of Sample Time calculates the proportion of wait time (for this wait type) over the time frame selected for the drilldown page. | SoSSE-7378
Collection of the support bundle has been enhanced. You can choose not to include the Spotlight Diagnostic Server. In a federated environment you can choose to collect from all or selected Spotlight Diagnostic Servers in a federation. When the support bundle is emailed there is an option to include the Service Request ID in the email. | SoSSE-7365
On the SQL Server \| Workload Analysis drilldown as a performance enhancement the list of SQL statements is loaded 100 at a time. Click **Show More** to show the next 100 statements.  | SoSSE-7336
Collection of the support bundle has been enhanced. We no longer capture historical logs automatically. The historical logs are large and rarely used. There is an option to include historical logs in the collection if required. | SoSSE-7233
Configure \| Extended Events has been enhanced with Advanced Settings. | SOSSE-7224
On the SQL Server, SQL Activity drilldown, Sessions grid the column "Request Granted Memory" has been added. | SOSSE-7143
From the Spotlight Client, the Configure Alarm Action Editor now has an option to enable/disable an alarm action rule. | SOSSE-7038, DS-552
From the Spotlight Client, the Alarm Action dialog has a new option for each alarm action rule to "Run this action now on existing alarms". | SOSSE-7034, DS-1076
The SQL Server \| Overview Page, Blocked Processes component now links to the **SQL Activity drilldown \| Deadlocks page**. | SoSSE-6918
While viewing the SQL Server \| SQL Activity drilldown it is now possible to pause auto refresh. | SOSSE-6720
In the Spotlight Client the Configure Alarms dialog and Playback panel now have the facility to search for alarms  and filter the display accordingly. | SOSSE-6701
Spotlight Today alarms can now be grouped according to Heat Map order. | SOSSE-5596
On Configure Custom Counters, SQL Server, an Apply button has been added. If you have just added a new custom counter, click **Apply** before you click **Edit Thresholds** so the newly added Custom Counter is available on the Configure \| Alarms, Key Value list. | SoSSE-5510
Windows Disk Space Growth Report has been improved to better support multiple selected connections. | SoSSE-5383
There is now the ability to connect to an e-mail server that does not have TLS enabled; contact support for details. | DS-1402
The Extended Events session filter has been enhanced. | DS-1245
Spotlight Enterprise can now be used to monitor SQL Server 2017 Analysis Services. | DS-1191
Improved efficiency on executing the MoveDiagnosticServerHost stored procedure in the Spotlight Statistics Repository. | DS-976
Increased the security between the Spotlight Enterprise Diagnostic Server and the Out of Process Collector using sockets instead of HTTP. | DS-502
Connection Manager has been enhanced with Advanced Options for connection types Availability Groups, Replication, SQL Azure and SQL Server. You can now specify for each connection the connection timeout (in seconds) and the number of retries to attempt before raising a Connection Failure alarm. |
The SQL Server Wait Events drilldown has been enhanced. Each Wait Type has a direct link to Waitopedia. | SOSSE-5775

{% include links.html %}
