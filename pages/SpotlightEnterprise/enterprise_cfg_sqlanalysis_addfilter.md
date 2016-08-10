---
title: Add filter
summary: "This dialog is opened from Configure | SQL Analysis on request to add a filter. Filters determine what SQL Analysis data is collected from the SQL Server instance. SQL Analysis is used to determine what data is collected and displayed in the SQL Analysis - Workload View and the SQL Server | SQL Activity Drilldown | SQL Analysis page."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_sqlanalysis_addfilter.html
folder: SpotlightEnterprise
---



Note: Filtering affects the average, minimum, maximum, and last values displayed in the grid.

## AND/OR

Connect this filter to the previous filter in the Configure \| SQL Analysis list by AND or OR.

## Column

Select as appropriate.

## Operator

Select as appropriate.

When filtering on a string field such as DatabaseName or ApplicationName, use only the "LIKE" and "NOT LIKE" conditions. The other conditions apply only to numeric values.

## Value
 Select as appropriate.

The percent sign (%) and underscore (_) can be used as wildcards.

Note that wildcard characters in the Database name field when connected to a SQL Server 2000 instance are not supported.




{% include links.html %}
