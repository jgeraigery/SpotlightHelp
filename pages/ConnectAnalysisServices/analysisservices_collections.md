---
title: Analysis Services collections
last_updated: July 29, 2016
tags: [collections,collections_for_each_connection_type]
summary: "Data is collected from the SQL Server Analysis Services connection from the following Spotlight collections."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_collections.html
folder: ConnectAnalysisServices
---





## How to configure Spotlight collections

Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduling**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.

## Alarms

Alarm | Collection Name
------|-----------------
Command - Long Running Command Alarm | SSAS - Command List
Cubes - Days Since Last Processed Alarm | SSAS - Cube List
Cubes - Unprocessed Alarm | SSAS - Cube List

## Spotlight Overview page

### Connections panel

Component | Collection Name
----------|----------------
Connections | SSAS - Connection  
User Sessions | SSAS - Connection  
Avg Time Per Query | SSAS - Storage Engine Query
Data Flow: Queries Answered/s | SSAS - Storage Engine Query
Data Flow: Queries Requested/s | SSAS - Connection
Data Flow: Queries From Cache Direct | SSAS - Storage Engine Query
Data Flow: Queries from Cache Filtered | SSAS - Storage Engine Query
Data Flow: Queries From File | SSAS - Storage Engine Query

### Memory panel

Component | Collection Name
----------|----------------
Memory Limit Low | SSAS - Memory
Memory Limit High | SSAS - Memory
Memory Usage | SSAS - Memory
Current Latch Waits | SSAS - Locks
Current Lock Waits | SSAS - Locks
Query Pool Job Queue Length | SSAS - Threads
Data Flow: Temp File Rows Written | SSAS - Proc Aggregations
Data Flow: Rows Read | SSAS - Processing
Data Flow: Rows Written | SSAS - Processing

### Storage panel

Component | Collection Name
----------|-----------------
*All* | SSAS - Database Summary


## SQL Activity drilldown

Page | Collection Name
----------|----------------
Connections page | SSAS - Connection List
Sessions page | SSAS - Session List
Commands page | SSAS - Command List


## Memory  drilldown

Page | Collection Name
----------|----------------
Cache chart | SSAS - Cache
Proactive Caching chart | SSAS - Proactive Caching
Memory chart | SSAS - Memory
Threads chart | SSAS - Threads


## Storage drilldown

Page | Collection Name
----------|----------------
Databases page | SSAS - Database List
Cubes page | SSAS - Cube List


## Configuration drilldown

Page | Collection Name
----------|----------------
*All* | SSAS - Server Properties



{% include links.html %}
