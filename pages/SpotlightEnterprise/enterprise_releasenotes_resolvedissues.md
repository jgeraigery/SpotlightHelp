---
title: Resolved Issues in this Release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.0"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
---


Issue | ID
------|---
Corrected the source of an exception error on editing a connection to a monitored operating system where the link to the virtual server is removed. | SOSSE-6406
Resolved the source of an error on creating a Playback Database or Spotlight Statistics Repository in a TLS 1.2 only environment. | SOSSE-6383
Corrected a problem with the persistency of database connection properties (tags and operating system host) in an environment where multiple Spotlight Clients connect to a Spotlight Diagnostic Server. | SOSSE-6370
Resolved the source of an exception error on monitoring SQL Server and actioning Session Trace from various drilldowns such as TempDB \| Usage and SQL Activity \| Locks. | SOSSE-6260
Corrected a problem where on viewing Spotlight Today with 'Group By Top 50 alarms' the Spotlght Today display failed over time to stay current with the top 50 alarms. | SOSSE-6224
Corrected a problem so that now when using the Alarm Log and selecting an alarm to 'Show in Alarms by Time' the Alarms by Time display always selects the relevant alarm on screen. | SOSSE-6033
Issues with monitoring SQL Server, Index Fragmentation, have been addressed by removing the Index Fragmentation components from the SQL Sever Overview page. The Index Fragmentation alarm is still raised, as a medium alarm, from the Status component. | SOSSE-5901
Corrected the source of a Playback history error when creating a support bundle. | SOSSE-5837
In QS_AllTablesBySize.sql now use nolock instead of readpast to correct deadlocks caused by Spotlight. | SOSSE-5770
Corrected sourc of "Error retrieving data: ClientConnectIssue: Exception of type 'System.OutOfMemoryException' was thrown " in the Wait Events drilldown when selecting a custom date | SOSSE-5699
When configuring an alarm from the Configure \| Alarms dialog, the 'Alarm Requires Acknowledgement' option is now visible for the Factory Settings template. | SOSSE-5675
Spotlight Management Pack for Scom - tightened the code around calling waffle and NTLM for a customer getting repeated 401 http errors. | SOSSE-5429
Corrected a problem where the Auto Update failure Alarm can now be cleared after the Auto Update facility has been disabled. | SOSSE-5176

As a developer I want a complete RESTful Web-API | SOSSE-5167

Displaying limited number of rows in details drill down. | SOSSE-5018

Corrected a problem such that when a Spotlight Connection is deleted the associated data in the Spotlight Statistics Repository is also removed. | SOSSE-3347
Corrected a problem printing Spotlight Reports generated through the Spotlight Client Report Viewer when the paper size was set to A4. | SOSSE-2464
Corrected a problem where the Spotlight Diagnostic Server was kept waiting when SSPI authentication failed on the Spotlight Client. | DS-611
Corrected a problem where in Alarms by Time the connection state bar was colored red while there were no alarms raised. | DS-601
Corrected source of problem causing error: 'Diagnostic Server - Spotlight Cloud data transfer' for new customers. | DS-513
Corrected a problem where the value for Response Time was inconsistent between the Spolight Statistics Repostiory and Playback Database. | DS-414







{% include links.html %}
