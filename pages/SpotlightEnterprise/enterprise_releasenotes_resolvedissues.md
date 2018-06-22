---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.3"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---


Issue | ID
------|---
When monitoring SQL Server Replication the Spotlight Client has been enhanced to notify when certain drilldown pages are unavailable in Playback mode. When there is no data in the Agent-> Performance drilldown or SQL agent jobs drilldown then the Spotlight Client now shows "This section is not available in playback mode" | SOSSE-7399
Corrected a problem where on upgrade from 11.7.1 to 12.1/12.2 the SpotlightDiagnosticServer.ini file did not retain customized proxy settings. | SOSSE-7301
Corrected the source of Exception Error: Assertion failure error on Datasource.pas, line 1467 | SOSSE-7289
Corrected the source of an Unexpected Error on closing the Spotlight Client. | SOSSE-7230
Corrected Unexpected Error that closes the Spotlight client while viewing the SQL Activity drilldown. | SOSSE-7218
Corrected a problem where Playback Rewind of CPU Usage and SQL Activity Summary showed data inconsistent with real time analysis. | SOSSE-7216
When monitoring Windows Server on the CPUs drilldown, CPU Utilization chart, corrected a problem with the Arrange by Name setting. | SoSSE-7131
Corrected a problem where the Spotlight Client crashed while using the SQL Server, SQL Activity drilldown, Query Execution Statistics page. | SOSSE-6969
Corrected a problem where timestamp data was missing from the SQL Server Health Report. | SOSSE-6398
The SQL Server, Support Services drilldown, SQL Agent Jobs page now shows "not supported in playback mode" for the Job History and SQL Agent Job Status panels. | SOSSE-6274
Improved Spotlight Today, Group by Alarms, now expands Low and Informational Severity Alerts to display alarms individually. | SOSSE-6016
Corrected a problem where the generated Deadlock List Report was incomplete. | SOSSE-5468
Corrected a problem where in a Federated environment, Connection names have underscores and not backslashes. SOSSE-4522
Corrected a problem when using the SQL Server Replication Subscriptions drilldown where selecting a Subscriber from the Subscription list results in an error. | SOSSE-49


{% include links.html %}
