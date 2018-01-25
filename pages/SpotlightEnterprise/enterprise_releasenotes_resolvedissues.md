---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.2"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---


Issue | ID
------|---
Corrected a problem flagging error as the Curl is too old. | SOSSE-7141
The Failed SQL Agent Jobs Report has been changed to return all jobs in the reporting period and not just the last execution of each job. | SOSSE-7093
Corrected a problem where in some localizations the Performance Health Rating was invalid with exaggerated values displayed. | SOSSE-7055
Corrected a problem with Spotlight Today when Group by Alarms was in use. | SOSSE-7051
Corrected problem underlying - Unexpected error: Live result set not available for table SQLDatabaseInfo | SOSSE-7048
Corrected a problem with the Deadlock and Blocking drilldowns where sometimes an AV error popped up when showing detail. | SOSSE-7047
Corrected a problem with the SQL Server \| Sessions drilldown - filtering sessions in playback mode. | SOSSE-7030
Corrected a problem with SQL Server Analysis Services drilldowns where date columns were incorrectly sorted. | SOSSE-7028
Corrected a problem where on Configure \| Alarms an unexpected error was raised. | SOSSE-7017
Corrected a problem with the Heatmap display algorithm. | SOSSE-6894
Corrected a problem where PowerShell commands did not work after import. | SOSSE-6830
While adding a Windows connection you now have the option to select an initial Alarms Template. | SOSSE-6754
Corrected a problem where on uninstall the Spotlight Client icon remained on the desktop. | SOSSE-6675
Corrected a problem where following upgrade / re-install unexpected errors occurred on Query Execution Statistics drilldown. | SOSSE-6623
Corrected a problem where on configuring the schedules to 'save background data to SSR' for Response Time - this broke the SQL Server Performance Summary Report. | SOSSE-6454
Corrected a problem with the Connection Discovery wizard where importing a file to update existing tags did not update. | SOSSE-5047
Corrected issue causing the Diagnostic Server to crash with out of memory error; related to Spotlight Cloud data transfer. | DS-1165
Corrected an issue with the Blocked Processes alarm where alert email stated 'session 70 blocked by session 0'. | DS-1160
Corrected a problem where the SQL - Long running SQL alarm failed to fire. | DS-1121
The category of DBMIRROR_DBM_MUTEX has been changed to wait_Idle. This affects the reporting of Performance Health. | DS-1122
Corrected a problem where the FragmentationByIndex procedure ran at unexpected times. | DS-1120
Corrected a problem where the following information was not available in Playback - Under Sessions: Sessions, Computers, Active, Active Sessions - Under Processes: Total, System, User, Blocked Processes. | DS-1107
The category of CLR_SEMAPHORE has been changed to wait_Idle. This affects the reporting of Performance Health. | DS-1090
Corrected a problem where for an alarm configured with keys, using the Alarms dialog to remove the key lead to an unexpected error. | DS-1055
Corrected a problem where procedure delmsr115_sqlserver.sqlfragmentationbyindex failed. | DS-1039
Corrected a problem where the SQL Agent - Failed Job alarm requiring acknowledgement was cleared without acknowledgement. | DS-1033
Improved the code that checks the OOP Collector is started to not block the thread doing the check but timeout if it takes too long. You will see an alarm if the OOP Collector fails to start instead of the Diagnostic Server process being stopped by too many blocked threads being detected. | DS-936
Changed the time to collected data from Spotlight Cloud to 2:00 am instead of 3:00 am so it is not run at the same time as the Database Maintenance Job. This resolves the cause behind errors like: Collection 'Health Check- Master Files' failed : Failed to convert value 'FG' from column 'type' int | DS-870
Corrected a problem using Office 365 SMTP client submission to send an email in Spotlight. | DS-783




{% include links.html %}
