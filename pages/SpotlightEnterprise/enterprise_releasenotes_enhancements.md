---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.0"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
---

## General Enhancements

Enhancement | Issue ID
------------|---------
When a monitored system is newer than the versions Spotlight has been tested against, Spotlight will now monitor the system if able. Spotlight will raise an alarm to let you know the version is not yet supported. Some collections may fail because Spotlight has not been tested against the version yet. | SOSSE-3679
There have been some changes to the implementation of **Spotlight Reports**. In the Spotlight Client the Reports tab now differentiates between Default Reports (those shipped with Spotlight) and Custom Reports (those reports you create). The Setting button on the Report Viewer has been removed and the location for Custom Reports has been set to a fixed location. | SOSSE-6416
An alarms **configuration template** can now be applied to a SQL Server connection while it is being created via **Configure Connections** and the **Connection Discovery Wizard**. | SOSSE-6407
Client has connection failures in a TLS 1.2 only environment | SOSSE-6383
You can now click **Help \| About \| View/Change Product License \| Retrieve License Key** to retrieve details of your License Key and contact the licensing team. | SOSSE-6169
The SQL Server, **Top SQL Statements** drilldown has been renamed to **Query Execution Statistics**. This drilldown is likely to be deprecated in the future in favor of the SQL Server, Workload Analysis drilldown. | DS-428
On the SQL Server, **SQL Activity drilldown, Sessions grid** the Status column has now been color coded for readability. | SOSSE-5714
Spotlight should Scrub sensitive data before uploading to Spotlight Essentials so that the user's confidential data does not reach the web. | SoSSE-4484
When monitoring a **SQL Server Availability Group**, Spotlight now raises an alarm if the connection address is to a node other than the Availability Listener. Spotlight requires the connection address be to the Availability Listener. | SoSSE-3117
When monitoring SQL Server, the **Support Services drilldown \| SQL Agent Jobs page** now includes the QL agent job SPID. | SOSSE-5638

{% include links.html %}
