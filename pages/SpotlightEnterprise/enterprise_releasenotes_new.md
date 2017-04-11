---
title: New in this release
keywords: release notes
summary: "New features in Spotlight Enterprise 12.0"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_new.html
id: 40001
folder: SpotlightEnterprise
readonly: true
---

## SQL Server vNext hosted on Linux is partially supported
Spotlight Enterprise now provides partial support for monitoring SQL Server hosted on Linux and [Unix/Linux servers][unix_welcome]. For clarification of supported features see [Partial support for monitoring SQL Server vNext hosted on Linux][sqlserver_unix_partialsupport].

## Plan visualization
The [SQL Server \| SQL Activity drilldown][sqlserver_drilldown_sqlactivity] has been enhanced. The Optimizer Plan Visualization control replaces the  **SQL Statement** and **Plan** tabs for a selected session. The Optimizer Plan Visualization control provides an interactive and intuitive way to view your plan and statement.

## Sessions status visualization
The [SQL Server \| SQL Activity drilldown \| Sessions grid][sqlserver_grid_sessions] has been enhanced. The grid is color coded by status to make it easier to scan sessions.

## SQL Server availability report
A new report has been added to the default [Spotlight Enterprise reports][enterprise_display_reports]. The new report called the **SQL Server Availability Report** shows the availability / uptime of monitored instances.

## Performance metrics trends charts
The [SQL Server \| Workload Analysis][sqlserver_drilldown_workloadanalysis] drilldown has been enhanced to drilldown on a trending chart for a particular transaction.


{% include tip.html content="The Deadlocks, Wait Events and Workload Analysis features in Spotlight Enterprise make use of Extended Events. Spotlight will continue to use Extended Events in the development of the product's features." %}

{% include links.html %}
