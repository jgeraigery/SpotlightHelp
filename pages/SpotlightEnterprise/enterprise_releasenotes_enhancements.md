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
On the SQL Server \| Workload Analysis drilldown as a performance enhancement the list of SQL statements is loaded 200 at a time. Click **Show More** to show the next 200 statements.  | SoSSE-7336
Collection of the support bundle has been enhanced. We no longer capture historical logs automatically. The historical logs are large and rarely used. There is an option to include historical logs in the collection if required. | SoSSE-7233
Configure \| Extended Events has been enhanced with Advanced Settings. | SOSSE-7224
The SQL Server \| Overview Page, Blocked Processes component now links to the **SQL Activity drilldown \| Deadlocks page**. | SoSSE-6918
While viewing the SQL Server \| SQL Activity drilldown it is now possible to pause auto refresh. | SOSSE-6720
On Configure Custom Counters, SQL Server, an Apply button has been added. If you have just added a new custom counter, click **Apply** before you click **Edit Thresholds** so the newly added Custom Counter is available on the Configure \| Alarms, Key Value list. | SoSSE-5510
Windows Disk Space Growth Report has been improved to better support multiple selected connections. | SoSSE-5383

On the SQL Activity drilldown on the Plan pane there is a new Objects grid. The operation column cannot be removed.


{% include links.html %}
