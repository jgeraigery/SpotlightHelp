---
title: SQL Server collections
tags: [collections]
summary: "The following collections are used for displays (home page components and drilldowns)."
sidebar: c_sqlserver_sidebar
permalink: /sqlserver_collections/
---


## Alarms

Alarm | Collection name
------|-----------------
Backup Alarms | Database List   
Clusters - Failed Over Alarm | Not Publicly Visible  N
Clusters - File Share Witness inaccessible alarm | Cluster List   
Clusters - Node Unavailable Alarm | Cluster Summary   
Clusters - Non-Preferred Node Alarm | Cluster Summary   
Compiles - Percentage Recompilations Alarm | Statistics    
SQL Custom Counters Alarm | Custom Counters - SQL Server   
Databases - Data File Group Space Used Alarm | Files

Minimum refresh for this collection is 60 seconds

Databases - Dynamic Data File Group Growths Remaining Alarm    
Databases - Dynamic Log File Growths Remaining Alarm    
Databases - Log File Space Used Alarm    
Databases - Log Flush Wait Time Alarm | Database Info   
Databases - SQL I/O Errors Alarm | Global Variables   
Databases - Unavailable Alarm | Database List   
Error Log - Error Count Alarm | Error Log Scan   
I/O Stall Time Alarm | IO Stall   
Index Fragmentation Alarm | Fragmentation Overview   
Index Fragmentation Status Alarm | Fragmentation Overview   
Latch - Total Wait Time Rate Alarm | Latches Locks   
LiteSpeed Backup Alarms | LiteSpeed Alarm   
Locks - Blocked Processes Alarm | Blocking    
Locks - Deadlocks Alarm | Deadlock List    
Log Shipping - Primary Backup Job Alarm | Log Shipping Primaries   
Log Shipping - Secondary Job Alarm | Log Shipping Secondaries   
Log Shipping - Secondary Latency Alarm | Log Shipping Secondaries   
Memory - Page Life Expectancy Alarm | Buffer Manager   
Mirroring - State Alarm | Mirroring   
Mirroring - Unrestored Log Alarm | Mirroring   
Mirroring - Unsent Log Alarm | Mirroring   
Mirroring - Failed Over Alarm | Mirroring Failover Detection   
Missing SQL Performance Counters Alarm | (displayed in Spotlight Today) Check Performance Counters N
Network - SQL Server Packets Error Rate Alarm | Global Variables   
Services – DTC Service Status (see Services - Service Not Running Alarms) | General Counters   
Services – Full Text Search Service (see Services - Service Not Running Alarms) | General Counters   
Services - Integration Service Status Alarm (see Services - Service Not Running Alarms) | General Counters   
Services - Reporting Service Status Alarm (see Services - Service Not Running Alarms) | General Counters   
Services - SQL Mail Status (see Services - SQL Mail Status Alarm / SQL Agent Mail Status Alarm) | SQL Mail   
Services – SQL Agent Mail Status (see Services - SQL Mail Status Alarm / SQL Agent Mail Status Alarm) | General Counters   
SQL - Long Running SQL alarm | Long Running SQL   
Session Details N
SQL Agent - Alerts Alarm | Alert Failures

Minimum refresh for this collection is 60 seconds

SQL Agent - Jobs Failed Alarm | Agent Job List   
SQL Agent - Long Running Jobs Alarms | Agent Job List   
SQL Agent - Status (see Services - Service Not Running Alarm)  | General Counters   
SQL Analysis - Aggregation Information Alarm | SQL Analysis Aggregation N
SQL Virtual Log Files Count alarm | SQL Virtual Log Files Count   
Tempdb Auto Growth | Tempdb File Auto Growth   
Tempdb Contention | Tempdb Contention   
Tempdb File Location | Tempdb File Location   
Tempdb File Size | Tempdb File Size   
Tempdb Growth Settings | Tempdb Configuration Checks   
Tempdb Number of Files | Tempdb Configuration Checks   
Tempdb Version Store Generation Rate | Tempdb Performance Counters   
Tempdb Version Store Size | Tempdb Space Usage   
User - Connection Count Alarm | SQL Server Connections   
User - Logins Per Second Alarm | Global Variables   
User - Response Time Alarm | Response Time   

## SQL Server Overview Page

Component | Collection name
----------|-----------------
Home Page Panel Home Page Component Collection Name Cfg
SQL Server | Home Page | Sessions Panel  - SQL Server Connections   
SQL Server | Home Page | Processes Panel  - SQL Server Connections   
SQL Server | Home Page | Memory Panel  - Memory Manager   
Buffer Cache Buffer Manager   
Procedure Cache Cache Manager   
SQL Server | Home Page | Disk Storage Panel  Databases, Data Files, Log Files General DB Stats   
Tempdb Nil. Component attached to alarms.   
Max I/O Wait IO Stall   
SQL Server | Home Page | Performance Health Panel    Performance Health   
SQL Server | Home Page | System Panel  Version Version Information N



Page / Grid / Chart Collection Name Cfg

## SQL Server | Diagnostics Drilldown  

CPU Adhoc Queries N
CPU Recompiling Queries N
CPU Current Workload N
CPU Recent Workload N
CPU | Excessive Query Optimization Optimizer Info N
IO Current Workload N
IO Recent Workload N
IO SQL Index Latch Waits   
IO SQL Index Log Waits   
IO IndexLatchWaits N
IO IndexLogWaits  N

## SQL Server | Memory Drilldown  

Summary | Memory Areas chart Memory Manager   
Summary | Server Memory chart Memory Manager   

## SQL Server | SQL Activity Drilldown  

Sessions Session List   
Sessions | SQL Session Details  N
Sessions| Session Trace Session Trace N
Sessions | Session Locks Locks List   
Summary | Access Methods charts Access Methods   
Summary | CPU Utilization (SQL Server) SQL CPU Percent   
Locks Locks List   
Locks | Locks Types charts Lock Statistics   
Locks | Latches chart Latches Locks    
Blocking Decode Wait Resource N
Blocking Blocking List N
Deadlocks Deadlock List    
I/O by File Virtual File Statistics   
SQL Analysis SQL Analysis   
Custom Counters Custom Counters - SQL Server   
Top SQL Statements Top SQL Statements   

## SQL Server | Wait Statistics Drilldown  

Wait Statistics | Wait Time Trend chart Wait Statistics   

## SQL Server | Performance Health Drilldown  

Rating Performance Health   
Instance Wait Time WaitsByCategory   
I/O Latency Performance Health   

## SQL Server | Wait Events Drilldown

    Waits Events   

## SQL Server | High Availability Drilldown  

Primaries Log Shipping Primaries   
Secondaries Log Shipping Secondaries   
Primaries/Secondaries | History Log Shipping Monitor History Detail N
Primaries/Secondaries | History Log Shipping Primaries Secondaries N
Database Mirroring Mirroring    

## SQL Server | Databases Drilldown  

Databases Database List   
Databases General DB Properties   
Databases | Summary | Database History charts Database Info   
Databases | File Groups page File Groups   
Databases | Data Files page
 Files

Minimum refresh for this collection is 60 seconds

Databases | Transaction Logs page File Groups   
Databases | Log Files page
 Files

Minimum refresh for this collection is 60 seconds

Databases | Tables page Tables N
Databases | Indexes page Indexes N
Databases | Indexes | Fragmentation Fragmentation List N
Databases | Indexes | Statistics Index Statistics N
Databases | Indexes | Update Statistics Index Statistics Update  N
Databases | LiteSpeed Backups LiteSpeed Activity   

## SQL Server | Support Services Drilldown  

SQL Agent Jobs page Agent Job List   
SQL Agent Jobs | Start Job Start Job N
SQL Agent Jobs | Job History grid Agent Job History N
Service Status page Support Services   
Service Status | Start/Stop Service Control  N
SQL Agent Alerts page Agent Alert List N
Cluster Services page Cluster List N
Cluster Services | Take offline / bring online / move group Cluster Control N
DTC page
 DTC Information

This is a Windows collection.

Full Text Search page Full Text Catalog

## SQL Server | Configuration Drilldown

   Configuration List

Collection performed only once when entering the Configuration drilldown

  Version Information N
Submit update Configuration Update N

## SQL Server | Error Log Drilldown  

Error Log dropdown Error Log List N
SQL Server Error Logs / SQL Agent Error Logs Error Log N
Cycle Cycle Error Log N

## SQL Server | Workload Analysis Drilldown   

 Workload Analysis   

## SQL Server | Tempdb Drilldown  

Tempdb | Configuration Health Tempdb Configuration Checks; Tempdb File Auto Growth; Tempdb File Location   
Tempdb | Usage Tempdb Session Space Usage; Tempdb Space Usage; Tempdb Performance Counters   
Tempdb | Contention Tempdb contention; Tempdb Page Wait Times   

## SQL Optimizer

Application | Collection Name
------------|----------------
SQL Optimizer | Top SQL Statements
