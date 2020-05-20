---
title: Resolved issues in this release
keywords: release notes
summary: "The following is a list of issues addressed in Spotlight Enterprise 13.2.1"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_resolvedissues.html
folder: SpotlightEnterprise
readonly: true
---



## Issues resolved in Spotlight Enterprise 13.2.1

Issue | ID
------|---
Corrected a problem where the Spotlight Extended Events session collected events that did not contain relevant information. | SEMB-442,SOSSE-8686
Corrected a problem where the Spotlight caused a SQL Server log message if ‘Database Mail XPs’ is disabled. | SEMB-434,SOSSE-8705
Corrected a problem where running an Alarm Action failed with the error ‘Internal error; null pointer’. | SOSSE-8618
Corrected a problem where the "I/O Stall Time" alarm did not work. | SOSSE-8677
Corrected a problem where the Spotlight client was unable to connect to the Diagnostic Server after the Daylight Saving Time changed. | SEMB-493,SOSSE-8811
Corrected a problem where the Diagnostic Server crashes with StackOverflowError during group membership check. | SEMB-435,SOSSE-8813
Corrected a problem where the Diagnostic Server crashes with out of memory error due to too many HTTP requests again. | SEMB-280,SOSSE-8699
Corrected a problem where the Diagnostic Server stopped uploading data to the cloud. | SEMB-504,SOSSE-8846
Corrected a problem where the Spotlight Today Drilldown stops refreshing after some alarms are acknowledged. | SOSSE-8842,SEMB-490
Corrected a problem where the Workload Analysis and Wait Events collections failed on SQL Server 2008 or 2008 R2. | SOSSE-8851,SEMB-508
Corrected a problem where the Workload Analysis drilldown did not display data due to an authorization failure. | SOSSE-8852,SEMB-509
Corrected a problem where the Diagnostic Server would not start after a user certificate was imported into the key store. | SOSSE-8856

{% include links.html %}
