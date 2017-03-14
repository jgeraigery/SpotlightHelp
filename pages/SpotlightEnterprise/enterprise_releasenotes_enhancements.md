---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.0"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
---

## General Enhancements

Known Issue | Issue ID
------------|---------
Enhancement to the handling of new versions of monitored systems. When the monitored system is newer than the versions Spotlight has been tested against (for connection types Windows, Hyper-V, SQL Server, Replication, Availability Group and Analysis Services), Spotlight will monitor the system if able and raise an alarm to let you know the version is not supported. Some collections may fail because Spotlight has not been tested against the version yet. | 3679
There have been some changes to the implementation of Spotlight Reports. In the Spotlight Client the Reports tab differenciates between Default Reports (those shipped with Spotlight) and Custom Reports (those reports you create). The Setting button on the Report Viewer has been removed and the location for Custom Reports has been set to a fixed location. | SOSSE-6416
As a DBA I want to apply a template during Discover and Import connections | SOSSE-6407
Client has connection failures in a TLS 1.2 only environment | SOSSE-6383
Click **Help \| About \| View/Change Product License \| Retrieve License Key** to retrieve details of your License Key and contact the licensing team if required. | SOSSE-6169
The SQL Server, **Top SQL Statements** drilldown has been renamed to **Query Execution Statistics**. This drilldown is likely to be deprecated in the future in favor of the SQL Server, Workload Analysis drilldown. | DS-428
On the SQL Server, SQL Activity drilldown, Sessions grid the Status column has been color coded for readability. | SOSSE-5714
Spotlight should Scrub sensitive data before uploading to Spotlight Essentials so that the user's confidential data does not reach the web. | SoSSE-4484





{% include links.html %}
