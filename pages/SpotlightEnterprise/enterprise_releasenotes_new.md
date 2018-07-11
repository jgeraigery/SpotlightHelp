---
title: New in this release
keywords: release notes
summary: "New features in Spotlight Enterprise 12.3"
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_new.html
id: 40001
folder: SpotlightEnterprise
readonly: true
---


## Plan Analysis
On the SQL Server, **SQL Activity | Sessions | Plan** and **SQL Activity | Query Execution Statistics | SQL details** pages the Optimizer Plan Visualization Control has been enhanced to show an Analysis of Query for the selected plan and the operation of each session for the selected plan. See [Plan][sqlserver_plan].

## Factory Reduced Severity Template
When configuring alarms there are two Factory Templates shipped with Spotlight: the Factory Settings Template and Factory Reduced Sensitivity Template. The new Factory Reduced Sensitivity Template reduces the severity of many alarms raised and is more likely to raise a high severity alarm only where the situation presents an availability issue. See [Configure Alarms][enterprise_cfgmonitor_alarms].

## Configuration Changes Report
This new report reports on configuration changes to the database. See the [List of Default Reports][enterprise_display_reportsshipped].

## Windows Disk Space Growth Report
This new report supports multiple selected connections. See the [List of Default Reports][enterprise_display_reportsshipped].


{% include tip.html content="The Deadlocks, Wait Events and Workload Analysis features in Spotlight Enterprise make use of Extended Events. Spotlight will continue to use Extended Events in the development of the product's features." %}

{% include links.html %}
