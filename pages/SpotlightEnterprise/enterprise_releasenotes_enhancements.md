---
title: Enhancements in this release
keywords: release notes
summary: "The following is a list of enhancements implemented in Spotlight Enterprise 12.4"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_enhancements.html
folder: SpotlightEnterprise
readonly: true
---

## Enhancements implemented in Spotlight Enterprise 12.4

Enhancement | Issue ID
------------|---------
Configuration of alarm actions has been enhanced to allow for the condition of taking an action (or taking no action) when an alarm is raised between two specific dates and times. | SOSSE-6537
Spotlight has introduced a facility to allow you to customize the display name for Windows Server connections. The customized display name is used in all displays including the connection tree, connection lists, reports, tables, grids and charts, alarms, alarm actions, alarm descriptions, configuration files, template files, Heatmap and drilldowns. It is also available as an Alarm Message Variable. | SOSSE-7734
The SQL Server **SQL Activity / Sessions** drilldown has been enhanced to make the "Active Sessions" and "System Sessions" filters more visible. | SOSSE-7265
When monitoring SQL Server, new In-Memory view added to the Databases drilldown to show memory consumption of In Memory OLTP. | SOSSE-6662
Spotlight has introduced a facility to allow you to customize the display name for SQL Server connections. The customized display name is used in all displays including the connection tree, connection lists, reports, tables, grids and charts, alarms, alarm actions, alarm descriptions, configuration files, template files, Heatmap and drilldowns. It is also available as an Alarm Message Variable. | SOSSE-6096
When monitoring a clustered SQL Server instance you can now see which cluster node the instance is running on from the SQL Server Overview page. | SOSSE-4110
The Spotlight Native Collector when opening an XEventsReader connection now tries to connect with a secured connection on first attempt and only when that fails does it retry with an unsecured connection.  | DS-1615
Spotlight now supports all SQLAgentJobsFailed columns as variables in the JobsFailed alarm message. Previously the JobCategory column was not supported. | DS-1591
Renamed all Error Log alarms to begin with "Error Log - ". All error log alarms are non configurable. | DS-1570
Spotlight Enterprise is now capable of checking database backups across Availability Groups. Spotlight uses the backup details from all replicas in the group when determining if a backup alarm should be raised. The prerequisite is that you must have a SQL Server connection for every replica in the Availability Group as well as a High Availability connection for the group. | DS-1425
The Windows **Services - Service not running** alarm now excludes Trigger and Delayed Start Automatic services for Windows Server 2016 and above. | DS-907


{% include links.html %}
