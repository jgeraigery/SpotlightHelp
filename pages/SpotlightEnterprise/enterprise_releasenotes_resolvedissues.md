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
As a user I want there is an easier way to analyze activity performance issues in Spotlight | SOSSE-6218
Column's sorting is not preserved | SOSSE-6216
As a DBA I want to apply a template during connection creation | SOSSE-6105
The alarm isn't always selected when I go from an alarm in alarm log to alarms by time | SOSSE-6033
As a support engineer, I want all logs to be rotating | SOSSE-5943
Test VMware collection for vCentre 6.0 | SOSSE-5930
Index fragmentation metric always shows 0 in homepage even though there are large indexs that require rebuilding | SOSSE-5901
Playback history error when creating a support bundle | SOSSE-5837
DOCO Support App-V deployment | SOSSE-5815
QS_AllTablesBySize.sql causes deadlocks | SOSSE-5770
Add CLR_MANUAL_EVENT to the list of idle waits. | SOSSE-5739
Online Help - QS_Services.sql cannot be executed successfully with non-sysadmin account | SOSSE-5715
As a DBA I want Spotlight to color different session status | SOSSE-5714
Spotlight client crashes when attempting to use Wait Events/Workload Analysis with custom date | SOSSE-5699
As a DBA I want to configure the zip attachment extension | SOSSE-5698
“Alarm Requires Acknowledgement” checkbox isn’t in the Factory Settings template | SOSSE-5675
As a user I want to know the SQL agent job SPID in Spotlight | SOSSE-5638
As a supporter I want to know why DS fails to write data to playback database or statistic repository database in the log | SOSSE-5622
As a user I want every report to be generated across several servers | SOSSE-5610
SCOM - robustify the code around calling waffle and NTLM for a customer that is getting repeated 401 http errors | SOSSE-5429
As a DBA I want to be warned about loosing data when unchecking "Override the factory settings" | SOSSE-5423
Cannot find perf data in table spotlight_stat_names for MemoryGrantsPending. | SOSSE-5384
Publications.sql returns error "subquery returned more than 1 value" | SOSSE-5372
Ignore some FTS waits | SOSSE-5287
Auto Update failure Alarm can not be cleared when user disable auto update option | SOSSE-5176
Better handling of deadlocks with victim SPID "Unknown" | SOSSE-5174
As a developer I want a complete RESTful Web-API | SOSSE-5167
Displaying limited number of rows in details drill down. | SOSSE-5018
Databases - Dynamic Data File Group Growths Remaining alarm failing | SOSSE-4786
As a DBA I would like to see more of the grid in the Wait Events drilldown | SOSSE-4272
Target system version tolerance | SOSSE-3679
As a User I want to be able to remove data from SSR for connections when the connection is deleted | SOSSE-3347
Write to Event Log action has no default message | SOSSE-2500
Reports generate blank pages every second page. | SOSSE-2464
DS keeps waiting forever when SSPI authentication failed on client side | DS-611
In alarms by time the connection state bar is red when there are no red alarms | DS-601
As a DBA I don't want to see DBCC info messages in the alarm text | DS-598
Fragmentation problem - Invalid column name 'AllocUnitTypeDesc'. [207] [Error Code: 207]. | DS-521
CLONE - [Customers] New customer unable to upload data | DS-513
As a DBA I want to View a Report on the availability of my SQL Server | DS-458
SSR response time value inconsistent with real time value | DS-414


Corrected a problem such that wen a Spotlight Connection is deleted the associated data in the Spotlight Statistics Repository is also removed. | SOSSE-3347







{% include links.html %}
