---
title: New in this Release
keywords: release notes
summary: "New features in Spotlight Enterprise 12."
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_new.html
id: 40001
folder: SpotlightEnterprise
---

## SQL Server on Linux Support
Spotlight Enterprise now monitors [Linux servers][linux_welcome].

## Plan Visualization
The [SQL Server \| SQL Activity drilldown][sqlserver_drilldown_sqlactivity] has been enhanced. The Optimizer Plan Visualisation control replaces the old **SQL Statement** and **Plan** tabs for a selected session. The Optimizer Plan Visualisation control provides an interactive and intuitive way to view your plan and statement.

## Sessions Status Visualization
The [SQL Server \| SQL Activity drilldown \| Sessions grid][sqlserver_grid_sessions] has been enhanced. The grid is color coded by status to make it easier to scan sessions. Multiple sessions can be selected. Sellected sessions can be killed in a single operation.

## SQL Server Availability Report
A new report has been added to standard [Spotlight Enterprise reports][enterprise_display_reports]. The new report shows the availability / uptime of monitored instances.

## Performance Metrics Trends Charts
The [SQL Server \| Workload Analysis][sqlserver_drilldown_workloadanalysis] drilldown has been enhanced to show a trending chart of a particular transaction.


{% include tip.html content="The Deadlocks, Wait Events and Workload Analysis features in Spotlight Enterprise make use of Extended Events. Spotlight will continue to use Extended Events in the development of the product's features." %}

{% include links.html %}
