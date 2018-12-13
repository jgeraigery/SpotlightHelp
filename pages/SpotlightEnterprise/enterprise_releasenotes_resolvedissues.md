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
When configuring a planned outage, corrected the problem that led to error: "A task was canceled". | SOSSE-6921
Corrected a problem where the Spotlight Diagnostic Server crashed with StackOverflowError in relation to configuring alarms where the message contains the message variable. | DS-1657
Corrected false alarms of “Databases - Data File Group Space Used” | DS-1490
Corrected a problem with the health check warnings where only one of the categories included in the message "This is because excessive time is being spent on Other, Network.” had a significant value. | DS-1258



{% include links.html %}
