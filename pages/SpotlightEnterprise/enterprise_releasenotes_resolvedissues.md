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
Corrected a problem using the SQL Server Workload Analysis drilldown where on copying the SQL Statement entity notation &lt; and &gt; was used instead of <>. | SOSSE-6794
Corrected a problem where Spotlight took too long to display data on enabling a (disabled) monitored connection. | DS-948
Corrected a problem where Spotlight incorrectly raised an  "Error Log - Error Count" alarm when Configure Error Log Entries was set to Enable error log scanning, all criteria unchecked. | DS-888
Corrected a problem where Spotlight was incorectly reporting "A full backup has never been taken for database" for some mirrored databases. | DS-847
Corrected a problem where a Spotlight Connection to an Availability Group failed on the default port. | DS-841
Corrected a problem where Spotlight raised false VMware - Virtual Machine Heartbeat alarm. | DS-826
On creating a connection to an Availability Group, testing the connection will now correctly report an invalid listener. | DS-761



{% include links.html %}
