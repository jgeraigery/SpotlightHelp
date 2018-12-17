---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 12.4"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---



## Issues resolved in Spotlight Enterprise 12.4

Issue | ID
------|---
In a federated environment corrected a problem where Spotlight displays message "The Diagnostic Server is operating normally" during expected Diagnostic Server disconnects. | SOSSE-7524
Corrected a problem on the SQL Server \| Blocking drilldown. In playback mode the blocking grid sometimes showed "No Data". | SOSSE-7248
On the SQL Server \| Overview page corrected all problems reporting the fragmentation index alarm. | SOSSE-7144
When configuring a planned outage, corrected the problem that led to error: "A task was canceled". | SOSSE-6921
Corrected the problem behind an error message raised on the Overview page when investigating a "User - Connection Count" alarm. | SOSSE-6757
Corrected a problem where the Spotlight Diagnostic Server crashed with StackOverflowError in relation to configuring alarms where the message contains the message variable. | DS-1657
Corrected a problem where a Spotlight monitoring Extended Events session with incorrect name was created on testing a connection in Configure \| Connections. | DS-1597
Corrected false alarms of “Databases - Data File Group Space Used” | DS-1490
Corrected a problem where Spotlight could not show the database size correctly for databases of type FILESTREAM. | DS-1419
Corrected a problem with the health check warnings where only one of the categories included in the message "This is because excessive time is being spent on Other, Network.” had a significant value. | DS-1258
Corrected a problem where adding a Windows host to a Hyper-V connection type incorrectly raises error "Collection 'Hyper-V - Hypervisor Logical Processor' failed : WMI query failed : Invalid class. [0x80041010]" on test. | DS-1218


{% include links.html %}
