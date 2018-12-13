---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.4"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
readonly: true
---

## Enhancements implemented in Spotlight Enterprise 12.4

Enhancement | Issue ID
------------|---------
The Windows **Services - Service not running** alarm now excludes Trigger and Delayed Start Automatic services for Windows Server 2016 and above. | DS-907
New **SQL - Running out of Threads** alarm raised when the number of worker threads in use is high compared to the maximum number of worker threads configured. | SOSSE-7835
The SQL Server **SQL Activity / Sessions** drilldown has been enhanced to make the "Active Sessions" and "System Sessions" filters more visible. | SOSSE-7265
You can now schedule planned outages from Windows Powershell / the command line. | SOSSE-6382
The SQL Server \| Workload Analysis drilldown has been enhanced with Plan and SQL tabs for a selected SQL Statement, same as for the SQL Activity \| Sessions \| Query Execution Statistics drilldown page. | SOSSE-6060

{% include links.html %}
