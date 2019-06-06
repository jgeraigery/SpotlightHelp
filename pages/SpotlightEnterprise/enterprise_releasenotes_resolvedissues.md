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
Corrected a problem where Spotlight MIB file is not valid. | DS-652
Corrected a problem where SQL Running Out Of Threads alarm is reporting false positives. | DS-1814
Corrected a problem where on monitoring Availability Group there were duplications in Replica and Databases. | DS-1779
Corrected a problem where the I/O Stall Time alarm does not work after applying the Factory Reduced Sensitivity Template. | DS-1751 
Corrected a problem where SQL Agent - Jobs Failed alerts were re-sent when alarm actions were created. | DS-1743
Corrected a problem where Alarm action generate Deadlock alarm can't find zip file. | DS-1721
Corrected a problem where multiple duplicate alerts were sent after an alarm actions change. | DS-1712
Corrected a problem where Clusters - Failed over Alarm Shouldn't be raised when scheduled outage ends. | DS-1688
Corrected a problem where SQL Agent Job List writes too much data to Spotlight Statistics Repository. | DS-1630
Corrected a problem where Client process was terminated due to an unhandled exception. | SOSSE-8068


{% include links.html %}
