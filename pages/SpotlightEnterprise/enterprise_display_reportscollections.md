---
title: Access Spotlight Reports from a Web Browser
keywords: reports
summary: "Spotlight Reports can be deployed to SQL Server Reporting Services where they can be accessed via a web browser."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportscollections.html
folder: SpotlightEnterprise
---


Report | Schedule | Collection Procedure
-------|----------|---------------------
All SQL Agent Jobs | Agent Job List | spotligtht_rt_get_allsqlagentjobs
Database Growth	| Database List	| spotlight_rep_growth_data_files
Failed SQL Agent Jobs	| Agent Jobs Failed	| spotlight_rt_get_failedsqlagentjobs
SQL Server Availability	| Connection Availability	| text
SQL Server Blocking	| Blocking List	| spotlight_rt_get_sqlblockingmost, spotlight_rt_get_mostcommonblock, spotlight_rt_get_sqlblockedmost
SQL Server Configuration | Server Properties, xp_msver properties, Configuration List | text
SQL Server Connection	| SQL Server Connections | text
SQL Server Database Space	| Database List	| text
SQL Server Inventory | Version Information | text
SQL Server IO |	Buffer Manager, Virtual File Statistics |	text
SQL Server Job Duration |	Agent Job List | text
SQL Server Job | Agent Job List |	text
SQL Server Memory | Buffer Manager, Cache Manager, Memory Manager | text
SQL Server Performance Summary | SQL CPU Percent | text
SQL Server Single Server Connection | SQL Server Connection | text
SQL Server Transaction Daily Range Summary | Database Info | text
SQL Server Transaction Monthly Summary | Database Info | text
SQL Server Transaction Single Day Summary | Database Info	| text
SQL Server Wait Statistics | Wait Statistics Details | spotlight_rt_get_waitstats
Windows Disk Space | File Systems	| text
Windows Inventory	| Operating System, Memory, Processor Details	| text
Windows Memory | Memory | text
Windows Performance Summary | Processors, Memory, Network, Physical Disks | text
Windows Virtualization | Virtual Machine Usage | text


Report | Schedule	| Datasets | statistic_class_name	| Procedure
-------|----------|----------|----------------------|----------
Custom Counters	| SQLCustomCounters |	\	| sqlcustomcounters | spotlight_rt_get_custom_counter
Database Settings	| General DB Properties |	\	| generaldbproperties	| spotlight_rt_get_point_data
Deadlock list	| Deadlock List |	\	| deadlocklist | spotlight_rt_get_batch_data
SQL Server  General Statistics | SQL Server Connections, Buffer Manager, Statistics, Memory Manager, Cache Manager | \	| sqlconnections，sqlbuffermanager, sqlstatistics，sqlmemorymanager，sqlcachemanager | spotlight_rt_get_batch_data
SQL Server  Health Database Files	| Files |	\	 | sqlfiles	| spotlight_rt_get_point_data
SQL Server Health	| SQL Server Connections, Statistics, Buffer Manager, Cache Manager, Memory Manager | \	| sqlconnections，sqlstatistics，sqlbuffermanager, sqlcachemanager, sqlmemorymanager | sqlconnections
SQL Server Health Table Summary | SQL Table Summary | \	| sqltablesummary |	spotlight_rt_get_point_data_top
SQL Server Index Summary | SQL Index Summary | \ | sqlindexsummary | spotlight_rt_get_point_data_top
SQL Server Keyd Metric |  |	\	| |
SQL Server Large Databases | Database List | \	| sqldatabaselist	| spotlight_rt_get_point_data_top
SQL Server  Metric |  |	SpotlightGetStatClass	| \StoredProcs\SSR_proc_get_tables.sql	| spotlight_get_tables
. |  | SpotlightGetStatName | b.statistic_class_name = @table_name | text
. |  | SpotlightGetSQLStat | sc.statistic_class_name = @stat_class_name | text
SQL Server Redundant and Reverse Indexes | Redundant Indexes,Reverse Indexes | \ | sqlredundantindexes,sqlreverseindexes | spotlight_rt_get_point_data
SQL Server Tables Missing Clustered Indexes or Primary Keys | Tables Missing Primary Keys, Tables Missing Clustered Indexes | \	| sqltablesmissingprimarykeys, sqltablesmissingclusteredindexes | spotlight_rt_get_point_data
Windows Configuration	| Operating System, Paging Files, Advanced Performance Options, Windows System Start Options | \ |  operatingsystem, pagingfiles, advancedperformanceoptions, systemoptions | spotlight_rt_get_point_data
Windows General Statistics | Memory,Processes, SQL CPU Percent, System Performance, Network, Logical Disks | \ | memory, processors, sqlcpupercent, system, network, logicaldisks | spotlight_rt_get_batch_data
Windows Hardware Configuration | Computer System, Processor Details, Physical Memory, Physical Disk Drive, Network Adapter | \	| computersystem,processordetails,physicalmemory<br>physicaldiskdrive,networkadapter | spotlight_rt_get_point_data
Windows Keyed Metrics	| | \	 |  |	text
Windows Server Health	| Processes, SQL CPU Percent, System Performance, Memory, Network, Logical Disks | \ | processors, sqlcpupercent, system, memory, network, logicaldisks | dbo.spotlight_rt_get_batch_data
Windows Virtualization Summary |  |	\	|  | text

{% include links.html %}
