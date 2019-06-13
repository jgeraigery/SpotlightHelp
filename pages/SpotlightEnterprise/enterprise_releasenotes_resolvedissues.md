---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 13.0"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---



## Issues resolved in Spotlight Enterprise 13.0

Issue | ID
------|---
Corrected a problem where the "SQL Running Out Of Threads" alarm was reporting false positives. | DS-1814
Corrected a problem where duplicate alerts were sent for some alarms. | DS-1797
Corrected a problem where on monitoring Availability Group there were duplications in Replica and Databases. | DS-1779
Corrected a problem where the Availability Group State collection did not fail when a collection it was dependent on failed. | DS-1764
Corrected a problem where the "User-Connection Count" alarm showed a wrong message in playback mode. | DS-1753
Corrected a problem where the "I/O Stall Time" alarm did not work after applying the Factory Reduced Sensitivity Template. | DS-1751 
Corrected a problem where the "SQL Agent - Jobs Failed" alerts were re-sent when alarm actions were created. | DS-1743
Corrected a problem where an alarm action generated the error "Deadlock alarm can't find zip file". | DS-1721
Corrected a problem where multiple duplicate alerts were sent after an alarm actions change. | DS-1712
Corrected a problem where the "Clusters - Failed over" alarm was raised when a scheduled outage ended. | DS-1688
Corrected a problem where the SQL Agent Job List writes too much data to Spotlight Statistics Repository. | DS-1630
Corrected a problem where there was no data in SQL activity. | DS-1573
Corrected a problem where Spotlight MIB file is not valid. | DS-652
Corrected a problem where Spotlight threw the error "Cannot assign a default value" after upgrading to 12.4 | SOSSE-8233
Corrected a problem where the client process was terminated due to an unhandled exception. | SOSSE-8068
Corrected a problem where the "Fragmentation by Index" procedure was executed when the drilldown was first visited. | SOSSE-7999
Corrected a problem where Spotlight asked for confirmation when applying a template to a connection but there were no changes in the template.  | SOSSE-7655

{% include links.html %}
