---
title: Add custom counters
summary: "This dialog is opened from Configure | Custom Counters on request to add a custom counter."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_customcounters_add.html
folder: SpotlightEnterprise
---



## Name

Type a name for the custom counter. The name will be displayed in the Custom Counters drilldown.

## Query

For SQL Server queries, use T-SQL syntax. For Windows queries, use WMI. It is recommended that the query return only one column and one row. For all custom counter queries, Spotlight reads only the first column of the first row of data. Any additional data is ignored. To return multiple values, use more than one query. See the following for examples of custom counter queries.

**Pages Allocated** (SQL Server 2005 or later)

select cntr_value from sys.dm_os_performance_counters

where  object_name like '%:Access Methods%'

and    counter_name = 'Pages Allocated/sec'

**User Connections** (SQL Server 2000)

select cntr_value from master.dbo.sysperfinfo

where  object_name like '%:General Statistics%'

and    counter_name = 'User Connections'

**Open Files** (Windows)

SELECT FilesOpen FROM Win32_PerfRawData_PerfNet_Server




{% include links.html %}
