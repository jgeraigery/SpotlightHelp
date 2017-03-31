---
title: SQL Server collections
last_updated: July 29, 2016
tags: [collections,collections_for_each_connection_type]
summary: "Data is collected from the SQL Server connection from the following Spotlight collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_collections.html
folder: ConnectSQLServer
---



## How to configure Spotlight collections

Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduling**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.


## Alarms

Alarm | Collection name | Notes
------|-----------------|------
Backup Alarms | Database List |  
Clusters - Failed Over Alarm | *Not Publicly Visible* | Non configurable
Clusters - File Share Witness inaccessible alarm | Cluster List |  
Clusters - Node Unavailable Alarm | Cluster Summary |  
Clusters - Non-Preferred Node Alarm | Cluster Summary |  
Compiles - Percentage Recompilations Alarm | Statistics |   
SQL Custom Counters Alarm | Custom Counters - SQL Server |  
Databases - Data File Group Space Used Alarm | Files | Minimum refresh for this collection is 60 seconds
Databases - Dynamic Data File Group Growths Remaining Alarm | Files | Minimum refresh for this collection is 60 seconds
Databases - Dynamic Log File Growths Remaining Alarm | Files | Minimum refresh for this collection is 60 seconds
Databases - Log File Space Used Alarm | Files | Minimum refresh for this collection is 60 seconds
Databases - Log Flush Wait Time Alarm | Database Info |  
Databases - SQL I/O Errors Alarm | Global Variables |  
Databases - Unavailable Alarm | Database List |  
Error Log - Error Count Alarm | Error Log Scan |  
I/O Stall Time Alarm | IO Stall |  
Index Fragmentation Alarm | Fragmentation Overview |  
Index Fragmentation Status Alarm | Fragmentation Overview |  
Latch - Total Wait Time Rate Alarm | Latches Locks |  
LiteSpeed Backup Alarms | LiteSpeed Alarm |  
Locks - Blocked Processes Alarm | Blocking  |  
Locks - Deadlocks Alarm | Deadlock List  |  
Log Shipping - Primary Backup Job Alarm | Log Shipping Primaries |  
Log Shipping - Secondary Job Alarm | Log Shipping Secondaries |  
Log Shipping - Secondary Latency Alarm | Log Shipping Secondaries |  
Memory - Page Life Expectancy Alarm | Buffer Manager   |
Mirroring - State Alarm | Mirroring  |
Mirroring - Unrestored Log Alarm | Mirroring |  
Mirroring - Unsent Log Alarm | Mirroring  |
Mirroring - Failed Over Alarm | Mirroring Failover Detection  |
Missing SQL Performance Counters Alarm (displayed in Spotlight Today) | Check Performance Counters | Non configurable
Network - SQL Server Packets Error Rate Alarm | Global Variables  |
Services – DTC Service Status | General Counters   |
Services – Full Text Search Service | General Counters |  
Services - Integration Service Status Alarm | General Counters  |
Services - Reporting Service Status Alarm | General Counters   |
Services - SQL Mail Status | SQL Mail |  
Services – SQL Agent Mail Status | General Counters |  
SQL - Long Running SQL alarm | Long Running SQL<br>Session Details | <br>Non configurable
SQL Agent - Alerts Alarm | Alert Failures | Minimum refresh for this collection is 60 seconds
SQL Agent - Jobs Failed Alarm | Agent Job List  |
SQL Agent - Long Running Jobs Alarms | Agent Job List |  
SQL Agent - Status  | General Counters |  
SQL Virtual Log Files Count alarm | SQL Virtual Log Files Count   |
Tempdb Auto Growth | Tempdb File Auto Growth   |
Tempdb Contention | Tempdb Contention  |   
Tempdb File Location | Tempdb File Location   |
Tempdb File Size | Tempdb File Size   |  
Tempdb Growth Settings | Tempdb Configuration Checks  |
Tempdb Number of Files | Tempdb Configuration Checks  |
Tempdb Version Store Generation Rate | Tempdb Performance Counters  |
Tempdb Version Store Size | Tempdb Space Usage  |
User - Connection Count Alarm | SQL Server Connections |  
User - Logins Per Second Alarm | Global Variables  |
User - Response Time Alarm | Response Time   |

## Spotlight Overview page

Panel, Component | Collection name | Notes
----------|------------------------|------
Sessions panel  | SQL Server Connections |  
Processes panel | SQL Server Connections |  
Memory panel  | Memory Manager  |
Memory panel \| Buffer Cache | Buffer Manager  |
Memory panel \| Procedure Cache | Cache Manager |  
Disk Storage panel \| Databases, Data Files, Log Files | General DB Stats  |
Disk Storage panel \| Tempdb | Nil. Component attached to alarms. |  
Disk Storage panel \| Max I/O Wait | IO Stall |  
Performance Health panel | Performance Health   |
System panel \| Version | Version Information | Non configurable



## Diagnostics drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
CPU | Adhoc Queries | Non configurable
CPU | Recompiling Queries | Non configurable
CPU | Current Workload | Non configurable
CPU | Recent Workload  | Non configurable
CPU \| Excessive Query Optimization | Optimizer Info | Non configurable
IO | Current Workload | Non configurable
IO | Recent Workload | Non configurable
IO | SQL Index Latch Waits   |
IO | SQL Index Log Waits |  
IO | IndexLatchWaits | Non configurable
IO | IndexLogWaits | Non configurable

## Memory drilldown  

Page, grid, chart | Collection Name
----------|------------
Summary \| Memory Areas chart | Memory Manager   
Summary \| Server Memory chart | Memory Manager   

## SQL Activity drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
Sessions | Session List |  
Sessions \| SQL | Session Details | Non configurable
Sessions \| Session Trace | Session Trace | Non configurable
Sessions \| Session Locks | Locks List |  
Summary \| Access Methods charts | Access Methods |  
Summary \| CPU Utilization (SQL Server) | SQL CPU Percent |  
Locks | Locks List   |
Locks \| Locks Types charts | Lock Statistics |  
Locks \| Latches chart | Latches Locks  |  
Blocking | Decode Wait Resource | Non configurable
Blocking | Blocking List | Non configurable
Deadlocks | Deadlock List  |  
I/O by File | Virtual File Statistics  |
Custom Counters | Custom Counters - SQL Server |  
Query Execution Statistics | QueryExecutionStatistics |  

## Wait Statistics drilldown  

Page, grid, chart | Collection Name
----------|------------
Wait Time Trend chart | Wait Statistics   

## Performance Health drilldown  

Page, grid, chart | Collection Name
----------|------------
Rating | Performance Health   
Instance Wait Time | WaitsByCategory   
I/O Latency | Performance Health   

## Wait Events drilldown

Page, grid, chart | Collection Name
----------|------------
*All*    | Waits Events   

## High Availability drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
Primaries | Log Shipping Primaries |  
Secondaries | Log Shipping Secondaries  |
Primaries/Secondaries \| History | Log Shipping Monitor History Detail | Non configurable
Primaries/Secondaries \| History | Log Shipping Primaries Secondaries | Non configurable
Database Mirroring | Mirroring  |  

## Databases drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
Databases | Database List |  
Databases | General DB Properties |  
Databases \| Summary \| Database History charts | Database Info |  
Databases \| File Groups page | File Groups |  
Databases \| Data Files page | Files | Minimum refresh for this collection is 60 seconds
Databases \| Transaction Logs page | File Groups |   
Databases \| Log Files page | Files | Minimum refresh for this collection is 60 seconds
Databases \| Tables page | Tables | Non configurable
Databases \| Indexes page | Indexes | Non configurable
Databases \| Indexes \| Fragmentation | Fragmentation List | Non configurable
Databases \| Indexes \| Statistics | Index Statistics | Non configurable
Databases \| Indexes \| Update Statistics | Index Statistics Update | Non configurable
Databases \| LiteSpeed Backups | LiteSpeed Activity |  

## Support Services drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
SQL Agent Jobs page | Agent Job List |
SQL Agent Jobs \| Start Job | Start Job | Non configurable
SQL Agent Jobs \| Job History grid | Agent Job History | Non configurable
Service Status page | Support Services |   
Service Status \| Start/Stop | Service Control | Non configurable
SQL Agent Alerts page | Agent Alert List | Non configurable
Cluster Services page | Cluster List | Non configurable
Cluster Services \| Take offline / bring online / move group | Cluster Control | Non configurable
DTC page | DTC Information | This is a Windows collection.
Full Text Search page | Full Text Catalog |

## Configuration drilldown

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
 | Configuration List | Collection performed only once when entering the Configuration drilldown
 | Version Information | Non configurable
Submit update | Configuration Update | Non configurable

## Error Log drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
Error Log dropdown | Error Log List | Non configurable
SQL Server Error Logs / SQL Agent Error Logs | Error Log | Non configurable
Cycle | Cycle Error Log | Non configurable

## Workload Analysis drilldown   

Page, grid, chart | Collection Name
------------------|-----------------
*All* | Workload Analysis

## Tempdb drilldown  

Page, grid, chart | Collection Name
------------------|------------
Configuration Health | Tempdb Configuration Checks; Tempdb File Auto Growth; Tempdb File Location   
Usage | Tempdb Session Space Usage; Tempdb Space Usage; Tempdb Performance Counters   
Contention | Tempdb contention; Tempdb Page Wait Times   

## SQL Optimizer

Application | Collection Name
------------|----------------
SQL Optimizer | QueryExecutionStatistics



## Collections not supported where the SQL Server host is Linux 
See [Partial support for monitoring SQL Server v.Next hosted on Linux][sqlserver_unix_partialsupport].



{% include links.html %}
