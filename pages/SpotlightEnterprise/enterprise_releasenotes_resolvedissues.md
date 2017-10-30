---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.1"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---


Issue | ID
------|---
Corrected Exception Error on the SQL Server \| Wait Events Drilldown: oid Dispatcher_UnhandledException(System.Object, System.Windows.Threading.DispatcherUnhandledExceptionEventArgs)> | SOSSE-6798
Corrected a problem using the SQL Server Workload Analysis drilldown where on copying the SQL Statement entity notation &lt; and &gt; was used instead of <>. | SOSSE-6794
Corrected a problem where the SQL Server \| Databases drilldown \| Database Details page \| Growth File Used MB chart failed to Maximize. | SOSSE-6793
Corrected a problem where you can now clear saved mail server settings for the Spotlight Diagnostic Server. | SOSSE-6792
Corrected a problem where in Playback, no SQL displayed on the SQL Activity \| Sessions and SQL Activity \| Query Execution Statistics drilldowns. | SOSSE-6734<br><br>SOSSE-6782
Corrected a problem when using Spotlight Today. Spotlight Today now correctly retains customer set column organization when returning to Spotlight Today from viewing other Spotlight pages. | SOSSE-6751
Corrected a problem on the Spotlight Overview page where clicking on a red Status component shows no information. | SOSSE-6743
Corrected a problem where the color of the connection and connection status did not match, particularly following a change in enable / disable monitoring. | SOSSE-6663
Corrected a problem creating a Playback Database and Spotlight Statisitcs Repository on a SQL Server hosted on Linux. | SOSSE-6625
Corrected a problem where the Spotlight Client installed on Windows 10 crashed while checking alarm details. | SOSSE-6499
Corrected a problem where the color of the connection on the Connections pane, Spotlight Today or Spotlight Overview page did not match alarms raised. | DS-984
Corrected a problem where Spotlight raised Connection Failure alarms while a connection was in Planned Outage. | DS-964
Corrected a problem where Spotlight took too long to display data on enabling a (disabled) monitored connection. | DS-948
Corrected a problem where Spotlight incorrectly raised an  "Error Log - Error Count" alarm when Configure Error Log Entries was set to Enable error log scanning, all criteria unchecked. | DS-888
Corrected a problem where on upgrade Spotlight was sometimes generating errors like: HTTP request to http://127.0.0.1:3166/CommandInBody failed : An existing connection was forcibly closed by the remote host. | DS-852
Corrected a problem where Spotlight was incorrectly reporting "A full backup has never been taken for database" for some mirrored databases. | DS-847
Corrected a problem where a Spotlight Connection to an Availability Group failed on the default port. | DS-841
Corrected a problem where Spotlight raised false VMware - Virtual Machine Heartbeat alarm. | DS-826
On creating a connection to an Availability Group, testing the connection will now correctly report an invalid listener. | DS-761
On the SQL Server \| Performance Health drilldown the scoring algorithm has been revised to make it smarter. Previous reporting of incorrect low scores has been corrected. | DS-489


{% include links.html %}
