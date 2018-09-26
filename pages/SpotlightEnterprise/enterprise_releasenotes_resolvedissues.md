---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.3"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---



## Issues resolved in Spotlight Enterprise 12.3.1

Issue | ID
------|---
Corrected a performance problem with the SQL Server \| Workload Analysis drilldown where there could be a noticeable delay selecting an item. | SOSSE-7597
In the SQL Server \| Databases drilldown \| Fragmented indexes grid, corrected the values in the Recovery column. | SOSSE-7589
In a federated environment corrected a problem where configuring Alarms, Alarm Actions, Scheduling and Planned Outages was inaccessible when one of the Spotlight Diagnostic Server was unavailable. | SOSSE-7479
On the SQL Server \| Fragmented Indexes drilldown corrected a problem where on click "Restore default settings" the drilldown shows "Loading ..." message forever. | SOSSE-7452
When generating a report and multiple SQL Server instances and/or Windows Servers were selected, corrected a problem where the maximum length of the parameter was exceeded. | SOSSE-7202
On the SQL Server \| Overview page corrected a problem reporting the fragmentation index alarm. | SOSSE-7144
When using the Spotlight Client, corrected a refresh issue on the Spotlight Overview page when switching between many connections. | SOSSE-6760
From a Spotlight Client installed on Windows Server 2008 SP2, corrected an unexpected error on acknowledging a Diagnostic Server Web Connection alarm. | SOSSE-6703
Corrected a problem behind an unexpected error, raised on generating a defragmentation script. | SOSSE-2408
Cleared duplicated properties "useextendedevents" in Monitored_Entity files. | DS-1508, SOSSE-7379
Corrected a problem where the SQL File Groups collection put an incorrect value in the DiskSizeInfoAvailable column. | DS-1495
Corrected false alarms of "Databases - Data File Group Space Used" | DS-1490
Corrected a problem where Spotlight stopped collecting data from SQL Server connections due to a failure to kill a Spotlight OOP Collector process. | DS-1434
Error returned by VMware procedures "Object reference not set to an instance of an object" - Have reduced the occurrence of this error by making improvements to the VMware collector code. | DS-744


## Issues resolved in Spotlight Enterprise 12.3

Issue | ID
------|---
When monitoring SQL Server Replication the Spotlight Client has been enhanced to notify when certain drilldown pages are unavailable in Playback mode. When there is no data in the Agent-> Performance drilldown or SQL agent jobs drilldown then the Spotlight Client now shows "This section is not available in playback mode" | SOSSE-7399
Corrected a problem where on upgrade from 11.7.1 to 12.1/12.2 the SpotlightDiagnosticServer.ini file did not retain customized proxy settings. | SOSSE-7301
Corrected the source of Exception Error: Assertion failure error on Datasource.pas, line 1467 | SOSSE-7289
Corrected the source of an Unexpected Error on closing the Spotlight Client. | SOSSE-7230
Corrected Unexpected Error that closes the Spotlight client while viewing the SQL Activity drilldown. | SOSSE-7218
Corrected a problem where Playback Rewind of CPU Usage and SQL Activity Summary showed data inconsistent with real time analysis. | SOSSE-7216, SES-170
Sign in and Sign up to Spotlight Cloud no longer requires a specific Internet Explorer version or customized Internet Options settings. | SOSSE-7184
When monitoring Windows Server on the CPUs drilldown, CPU Utilization chart, corrected a problem with the Arrange by Name setting. | SoSSE-7131
Corrected a problem where the Spotlight Client crashed while using the SQL Server, SQL Activity drilldown, Query Execution Statistics page. | SOSSE-6969
Corrected a problem where timestamp data was missing from the SQL Server Health Report. | SOSSE-6398
The SQL Server, Support Services drilldown, SQL Agent Jobs page now shows "not supported in playback mode" for the Job History and SQL Agent Job Status panels. | SOSSE-6274 / DS-1430
Corrected a problem where the generated Deadlock List Report was incomplete. | SOSSE-5468
Corrected a problem where in a Federated environment, Connection names have underscores and not backslashes. | SOSSE-4522
Corrected a problem when using the SQL Server Replication Subscriptions drilldown where selecting a Subscriber from the Subscription list results in an error. | SOSSE-49
Improved the information provided when an execute request is being made for a session that does not exist. | DS-1420
Corrected a problem where an abnormal number of Replication - Publication Expiration alarms are raised.  | DS-1404
MEMORY_PARTITION_MODE now "PER_NODE" by default instead of "PER_CPU". | DS-1389
Corrected our interaction with old SQL Server versions prior to the development of the UseExtendedEvents property. | DS-1388
Removed the Services - SQL Mail Status alarm (which was specific to SQL Server 2000). | DS-1378
Corrected an issue following upgrade to Spotlight Enterprise 12.2 with a configured SQL Long running SQL alarm. | DS-1269, DS-1226
Corrected a problem on the SQL Server, Databases drilldown, Disk Space page showed incomplete data. | DS-1255
Corrected a problem where the SQL Agent - Jobs Failed alarm wasn't raised if the failed job ran for 5 minutes. | DS-1250
Corrected a problem where the "SQLAgent" sessions were not listed on the SQL Activity, Sessions page when system sessions were filtered. | DS-1248
Corrected a problem where the Spotlight Diagnostic Server crashed on upgrade to Spotlight Enterprise 12.2 | DS-1247
Corrected a problem where Alarm Actions to send emails failed on upgrade to Spotlight Enterprise 12.2 with error " Sending email failed: Can't send command to SMTP host; nested exception is: PKIX Path building failed: unable to find valid certification path to requested target" | DS-1237
Corrected a problem where the Spotlight Diagnostic Server crashed with an out of memory error due to too many HTTP requests. | DS-1222
Corrected a problem where the SQL Server Custom Counters returned a wrong value if one custom counter returned null. | DS-1217
While monitoring SQL Server 2008 R2, on the SQL Activity drilldown Sessions page, corrected error: The following error occurred while collecting data, Invalid object name 'sysprocesses'. [208] [Error Code: 208]. | DS-1216
Corrected a problem of no date on the SQL Server Wait Events and Workload Analysis drilldowns for SQL Server 2016 connections. | DS-1210
Corrected a problem where the SQL Server Tempdb Usage drilldown charts showed no data. | DS-1201
Corrected a problem behind "Queue length exceeded (200) error" that stops the ability to configure monitoring on a Spotlight Client that has been up for a few days. | DS-1186
Corrected a problem where the SQL Agent Job failure alarm may not be synchronized for Spotlight email alerts, the Alarm Log and the Spotlight Overview page. | DS-1081
Improved the efficiency for the Spotlight Stored Procedure "MoveDiagnosticServerHost". | DS-976
Corrected a problem where serializing an alarm caused it to lose its name and id. | DS-896
Corrected a problem where the alarm Cleared time is not timely updated when the Dead lock alarm is cleared. | DS-850
Corrected a problem where the Failed SQL Agent Jobs Report did not show all failures. | DS-571
Corrected a problem executing the spotlight_sqlanalysis_results procedure. | SES-192
Fixed an issue that the SQL Server Blocking drilldown took too long to return data. | SES-175
Corrected a problem where Spotlight sometimes raised the error: “HTTP request to http://127.0.0.1:3166/CommandInBody failed” | SES-141, DS-1244
Corrected Spotlight's reporting of the SQL Agent Job failure alarm. | SES-112
Corrected a problem where session SPID > 2000 may be excluded from the session list. | SES-219

{% include links.html %}
