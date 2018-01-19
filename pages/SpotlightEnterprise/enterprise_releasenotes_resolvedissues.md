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
Corrected a problem where on uninstall the Spotlight Client icon remained on the desktop. | SOSSE-6675
Corrected a problem where following upgrade / re-install unexpected errors occurred on Query Execution Statistics drilldown. | SOSSE-6623
Corrected a problem where on configuring the schedules to 'save background data to SSR' for Response Time - this broke the SQL Server Performance Summary Report. | SOSSE-6454
Corrected a problem with the Connection Discovery wizard where importing a file to update existing tags did not update. | SOSSE-5047


{% include links.html %}
