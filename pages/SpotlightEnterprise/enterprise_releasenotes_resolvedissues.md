---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.0 and 12.0.1"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---

## Issues addressed in Spotlight Enterprise 12.0.1

Issue | ID
------|---
Spotlight Reports - Dates are now presented in the American format. | SOSSE-6715
Spotlight Client installed on Windows Server 2008 host experienced connection failure issues; resolved by adding support for TLS1.0 on Windows Server 2008. | SOSSE-6685
On Spotlight Today, corrected a problem with the 'Ignore this alarm' feature. | SOSSE-6678
When monitoring SQL Server, Workload Analysis and Wait Events drilldowns, can copy queries and selected parts of queries. Requires Internet Explorer above version 8 installed on the Spotlight Client host computer. | SOSSE-6677
Addressed customer support issues of high CPU on the Diagnostic Server host:- The value of the SQL Server connection property 'Obscure string literals in SQL text and parameters in query plans' has changed to 'not selected' for all SQL Server connections on upgrade. Following upgrade to select 'Obscure string literals in SQL text and parameters in query plans' as required, from the Spotlight Client, Click **Configure \| Connections**, select the SQL Server connection and fill in the connection details. | DS-869
When monitoring SQL Server \| Databases drilldown \| Disk Space chart, corrected a problem with the "Include Non-SQL files in chart" option. | DS-860
Addressed customer support issues of high CPU on the Diagnostic Server host:- Enhanced the data collection methodology for the SQL Server \| SQL Activity drilldown \| Query Execution Statistics page. | DS-851
Corrected a problem where Spotlight Enterprise 12.0 raised SQL Agent Failed Jobs alarms for unwanted jobs; Spotlight ignored exclusion values configured for these job names. | DS-825
Corrected Connection Failure issues around the use of Extended Events:- Monitored Server - SQL Server Secondary Connection Failure: Connection 'SQLServerXEventsChannel' failed to connect: The event data stream was disconnected because there were too many outstanding events. | DS-822
Corrected erroneous raising of the SQL Server **Databases - Dynamic Data File Group Growths Remaining** alarm on upgrade. | DS-624


## Issues addressed in Spotlight Enterprise 12.0

Issue | ID
------|---
Corrected the source of an exception error on editing a connection to a monitored operating system where the link to the virtual server is removed. | SOSSE-6406
Resolved the source of an error on creating a Playback Database or Spotlight Statistics Repository in a TLS 1.2 only environment. | SOSSE-6383
Corrected a problem with the persistency of database connection properties (tags and operating system host) in an environment where multiple Spotlight Clients connect to a Spotlight Diagnostic Server. | SOSSE-6370
Resolved the source of an exception error on monitoring SQL Server and actioning Session Trace from various drilldowns such as TempDB \| Usage and SQL Activity \| Locks. | SOSSE-6260
Corrected a problem where on viewing Spotlight Today with 'Group By Top 50 alarms' the Spotlght Today display failed over time to stay current with the top 50 alarms. | SOSSE-6224
Corrected a problem so that now when using the Alarm Log and selecting an alarm to 'Show in Alarms by Time' the Alarms by Time display always selects the relevant alarm on screen. | SOSSE-6033
Issues with monitoring SQL Server, Index Fragmentation, have been addressed by removing the Index Fragmentation components from the SQL Sever Overview page. The Index Fragmentation alarm is still raised, as a medium alarm, from the Status and Databases components. | SOSSE-5901
Corrected the source of a Playback history error when creating a support bundle. | SOSSE-5837
Corrected a problem of deadlocks caused by Spotlight by replacing readpast hints with nolock in the QS_AllTablesBySize.sql script. | SOSSE-5770
Corrected source of "Error retrieving data: ClientConnectIssue: Exception of type 'System.OutOfMemoryException' was thrown " in the Wait Events drilldown when selecting a custom date | SOSSE-5699
When configuring an alarm from the Configure \| Alarms dialog, the 'Alarm Requires Acknowledgement' option is now visible for the Factory Settings template. | SOSSE-5675
Spotlight Management Pack for Scom - tightened the code around calling waffle and NTLM for a customer getting repeated 401 http errors. | SOSSE-5429
Corrected a problem where the Auto Update failure Alarm can now be cleared after the Auto Update facility has been disabled. | SOSSE-5176
Corrected a problem such that when a Spotlight Connection is deleted the associated data in the Spotlight Statistics Repository is also removed. | SOSSE-3347
Corrected a problem printing Spotlight Reports generated through the Spotlight Client Report Viewer when the paper size was set to A4. | SOSSE-2464
Resolved an issue in Alarms by Time with the connection state bar color. | DS-750
Resolved an issue where the Availability Group - Failed Over alarm failed to be raised. | DS-736
Resolved the source of an error on the SQL Server \| Query Execution Statistics drilldown page when selecting to show query execution statistics using parallelism - error 'Cannot find either column "query_plan" or the user-defined function or aggregate "query_plan.exist", or the name is ambiguous.' | DS-699
Corrected a problem where the Spotlight Diagnostic Server was kept waiting when SSPI authentication failed on the Spotlight Client. | DS-611
Corrected a problem where in Alarms by Time the connection state bar was colored red while there were no alarms raised. | DS-601
Corrected a problem of "Arithmetic Overflow" error on calculation of database related collections in environments where monitored connections include large databases using large amounts of space. | DS-519
Corrected source of problem causing error: 'Diagnostic Server - Spotlight Cloud data transfer' for new customers. | DS-513
Corrected a problem where the value for Response Time was inconsistent between the Spolight Statistics Repostiory and Playback Database. | DS-414




{% include links.html %}
