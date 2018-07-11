---
title: Additional stored procedures
keywords: reports
summary: "Stored procedures return metadata about the Spotlight Statistics Repository or data from within the Spotlight Statistics Repository. The following procedures are in addition to the Spotlight API Stored Procedures."
sidebar: p_enterprise_sidebar
permalink: enterprise_ssrquery_storedprocedures_custom.html
folder: SpotlightEnterprise
---


{% include tip.html content="See stored procedures in action at [Query the Repository][enterprise_ssrquery_data_query]." %}


## Example Stored Procedures
The following stored procedures can be used as examples of how to retrieve data from the Spotlight Statistics Repository.

* spotlight_rt_get_allsqlagentjobs
* spotlight_rt_get_custom_counter
* spotlight_rt_get_failedsqlagentjobs
* spotlight_rt_get_mostcommonblock
* spotlight_rt_get_sqlblockedmost
* spotlight_rt_get_sqlblockingmost

## More Example Stored Procedures

Return data for the requested time range for the Workload view.
```
spotlight_rt_get_aggregated_workload_analysis @start_date, @end_date, @domain_name, @monitoredobject
```

Return data for the requested time range for a table and associated columns for multiple monitored objects in a domain.
```
spotlight_rt_get_batch_data @start_date, @end_date, @domain_name, @monitoredobject_list, @table_name, @column_list
```
Return data for the Database File IO Statistics view.
```
spotlight_rt_get_fileio_stats @start_date, @end_date, @domain_name, @monitoredobject
```

Return the same data as spotlight_rt_get_batch_data but for a particular point in time.
```
spotlight_rt_get_point_data @start_date, @end_date, @domain_name_list, @monitoredobject_list, @table_name, @column_name
```

Return the data from a specified collection at a specified time range.

```
declare @table_name NVARCHAR(255) = N'WaitStatsSummary' – This is collection name, you can find it in the table spotlight_stat_classes.
declare @start_date datetime = N'2017-01-01'
declare @end_date datetime = N'2017-01-18'
declare @monitoredobject_list NVARCHAR(4000) = N'host_instance_sqlserver' – comma-separated list of monitored instances, c.f. spotlight_monitored_objects
declare @domain_names NVARCHAR(255) – comma-separated list of SSR domains, c.f. spotlight_domains
declare @column_names NVARCHAR(255) – comma separated list of columns to output, c.f. spotlight_stat_names
select @domain_names = COALESCE(@domain_names + ',', '') + sd.domain_description
FROM [spotlight_domains] as sd
select @column_names = COALESCE(@column_names + ',', '') + sn.statistic_name
FROM [spotlight_stat_names] as sn
join [spotlight_stat_classes] as sc
on sc.statistic_class_id = sn.statistic_class_id
where sc.statistic_class_name = @table_name
EXEC [dbo].[spotlight_rt_get_batch_data]
@start_date = @start_date,
@end_date = @end_date,
@domain_name_list = @domain_names,
@monitoredobject_list = @monitoredobject_list,
@table_name = @table_name,
@column_list = @column_names
GO
```


Return the top n rows of spotlight_rt_get_point_data based on the column sort order passed in.
```
spotlight_rt_get_point_data_top @start_date, @end_date, @domain_name_list, @monitoredobject_list, @table_name, @column_list,@sortdesc_column_list, @maxrows
```

Return data for the view Wait Statistics view.
```
spotlight_rt_get_waitstats @start_date, @end_date, @domain_name, @monitoredobject
```

## Stored procedures used by the reports shipped with Spotlight

### spotlight_rep_alarms
Returns a list of alarms for a chosen monitored object from the repository.

Used in the Server Alarms report. This is a further example of how to query the Spotlight Statistics Repository to return tabular information.

### spotlight_rep_cache_hit_ratios
Returns hit rates for the buffer and procedure caches for all monitored objects in the repository.

Used in the SQL Server Health report. This is an example of querying two columns from a table over time from the Spotlight Statistics Repository.

### spotlight_rep_cpu_utilization
Returns the amount of CPU being used by the specified server against the total amount being used by all Windows processes.

Used in the Windows Server Health report. This is an example of querying one column from a table over time from the Spotlight Statistics Repository.

### spotlight_rep_disk_growth
Returns information on disk space usage over time.

### spotlight_rep_disk_statistics
Returns disk statistics (percentage busy and disk queue length) for the specified server.

Used in the Windows Server Health report. This is an example of querying multiple columns with multiple rows from a table over time from the Spotlight Statistics Repository.

### spotlight_rep_growth_data_files
Returns the following statistics for the specified server:

* Data size
* Data allocated
* Index size
* Table size
* Log size
* Log allocated

Used in the Database Growth report. This is an example of querying multiple columns with multiple rows from a table over time from the repository.

### spotlight_rep_sql_batches_rate
Returns the rate at which batches of SQL statements are being submitted to SQL Server for execution.

### spotlight_rep_top_sql  
Returns the top 200 SQL Statement executions that had the highest total elapsed time in each hour.

### spotlight_rep_top_sql_summary  
Returns summary information about the top 200 SQL Statement executions. Returns either the dates the data was collected, the times that the data was collected or a list of databases that the data was collected for.




{% include links.html %}
