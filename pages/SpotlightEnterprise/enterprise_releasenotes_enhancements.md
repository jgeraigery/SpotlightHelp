---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.2"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
readonly: true
---


## Enhancements implemented in Spotlight Enterprise 12.2

Enhancement | Issue ID
------------|---------
The defragmented indexes metric has been added back to the Overview page. | SOSSE-6990
You can now export the tabular data from the SQL Server Workload Analysis and Wait Events drilldowns. | SOSSE-6809
While adding a Windows connection you how have the option to select an initial Alarms Template. | SOSSE-6754
The category of DBMIRROR_DBM_MUTEX has been changed to wait_Idle. This affects the reporting of Performance Health. | DS-1122
The category of CLR_SEMAPHORE has been changed to wait_Idle. This affects the reporting of Performance Health. | DS-1090
Improved the code that checks the OOP Collector is started to not block the thread doing the check but timeout if it takes too long. You will see an alarm if the OOP Collector fails to start instead of the Diagnostic Server process being stopped by too many blocked threads being detected. | DS-936



{% include links.html %}
