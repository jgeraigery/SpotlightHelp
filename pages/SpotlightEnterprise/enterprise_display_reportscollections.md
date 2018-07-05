---
title: Collections used by the Default Reports
keywords: reports
summary: "The Default Reports shipped with Spotlight use the following collections and procedures."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportscollections.html
folder: SpotlightEnterprise
---


## How to configure Spotlight collections
Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduling**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.

## Query the Spotlight Statistics Repository and Procedures
Stored procedures return metadata about the Spotlight Statistics Repository or data from within the Spotlight Statistics Repository. See [Spotlight API Stored Procedures][enterprise_ssrquery_storedprocedures_api]. See also [Additional Stored Procedures][enterprise_ssrquery_storedprocedures_custom].

## Default Reports

Report | Collection Procedure | Collection Name
-------|----------|---------------------
All SQL Agent Jobs Report | SQLAgentJobList | Agent Job List
Custom Counters Report | SQLCustomCounters, CustomCounters | Custom Counters - SQL Server, Custom Counters - Windows
Database Growth	Report | SQLDatabaseList	| Database List
Database Settings Report | GeneralDBProperties | General DB Properties
Deadlock List Report | DeadlockList | Deadlock List
Failed SQL Agent Jobs Report	| SQLAgentJobsFailed	| Agent Jobs Failed
SQL Server Availability Report	| ConnectionAvailability	| Connection Availability
SQL Server Blocking	Report | SQLBlockingList | Blocking List
SQL Server Configuration Report | SQLConfigList | Server Properties,xp_msver properties,Configuration List
SQL Server Connection Report | SQLConnections | SQL Server Connections
SQL Server Database Space Report	| SQLDatabaseList	| Database List
SQL Server General Statistics Report | SQLConnections,SQLBufferManager<br>SQLStatistics,SQLMemoryManager<br>SQLCacheManager | SQL Server Connections,Buffer Manager<br>Statistics,Memory Manager,<br>Cache Manager
SQL Server Health Database Files Report | SQLFiles | Files
SQL Server Health Report | SQLConnections,SQLBufferManager<br>SQLStatistics,SQLMemoryManager<br>SQLCacheManager |  SQL Server Connections,Statistics,<br>Buffer Manager,Cache Manager,<br>Memory Manager
SQL Server Health Table Summary Report | SQLTableSummary | SQL Table Summary
SQL Server Index Summary Report | SQLIndexSummary | SQL Index Summary
SQL Server Inventory Report | SQLVersionInfo | Version Information
SQL Server IO Report |	SQLBufferManager, VirtualFileStats |	Buffer Manager,Virtual File Statistics
SQL Server Job Duration Report | SQLAgentJobList |	Agent Job List
SQL Server Job Report | SQLAgentJobList |	Agent Job List
SQL Server Large Databases Report | SQLDatabaseList | Database List
SQL Server Memory Report | SQLBufferManager<br>SQLStatistics,SQLMemoryManager<br>SQLCacheManager | Buffer Manager,Cache Manager,Memory Manager
SQL Server Performance Summary Report | SQLCPUPercent | SQL CPU Percent
SQL Server Redundant and Reverse Indexes Report | SQLRedundantIndexes, SQLReverseIndexes | Redundant Indexes,Reverse Indexes
SQL Server Single Server Connection Report | SQLConnections | SQL Server Connections
SQL Server Tables Missing Clustered Indexes or Primary Keys Report | SQLTablesMissingPrimaryKeys<br>SQLTablesMissingClusteredIndexes | Tables Missing Primary Keys<br>Tables Missing Clustered Indexes
SQL Server Transaction Daily Range Summary Report | SQLDatabaseInfo | Database Info
SQL Server Transaction Monthy Summary Report | SQLDatabaseInfo | Database Info
SQL Server Transaction Single Day Summary Report | SQLDatabaseInfo | Database Info
SQL Server Wait Statistics Report | SQLWaitStats | SQL Wait Statistics Details
Windows Configuration Report | OperatingSystem, PagingFiles<br>AdvancedPerformanceOptions<br>SystemOptions | Operating System,Paging Files<br>Advanced Performance Options<br>Windows System Start Options
Windows Disk Space Growth Report | FileSystems | File Systems
Windows Disk Space Report | FileSystems | File Systems
Windows General Statistics Report | Memory, Processes<br>System,Network,LogicalDisks | Memory,Processes,<br>System Performance,Network,Logical Disks
Windows Hardware Configuration Report | ComputerSystem,ProcessDetails<br>PhysicalMemory,PhysicalDiskDrive,NetworkAdapter | Computer System,Processor Details,<br>Physical Memory,Physical Disk Drive,Network Adapter
Windows Inventory Report | OperatingSystem,Memory,ProcessDetails | Operating System, Memory, Processor Details
Windows Memory Report | Memory | Memory
Windows Performance Summary Report | Processes, Memory,Network,PhysicalDisks | Processors,Memory, Network, Physical Disks
Windows Server Health Report | Processes,System,<br>Network,LogicalDisks | Processes,System Performance,<br>Memory,Network,Logical Disks
Windows Virtualization Report | VirtualUsage | Virtual Machine Usage
Windows Virtualization Summary Report | VirtualUsage | Virtual Machine Usage


{% include links.html %}
