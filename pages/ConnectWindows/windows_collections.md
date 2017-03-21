---
title: Windows collections
last_updated: July 29, 2016
tags: [collections,collections_for_each_connection_type]
summary: "Data is collected from the Windows Server connection from the following Spotlight collections."
sidebar: c_windows_sidebar
permalink: windows_collections.html
folder: ConnectWindows
---




## How to configure Spotlight collections

Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduling**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.

## Alarms

Alarm | Collection Name
----------|----------------
CPU - Average CPU Usage Alarm | Processors
CPU - Individual CPU Usage Alarm | Processors  
CPU - Processor Queue Length Alarm | System Performance
Windows Custom Counters Alarm | Custom Counters - Windows
Disks - Queue Length alarm | Logical Disks
File - Exceeded Set Size Alarm | File Sizes
Memory - Free System Page Table Entries Alarm | Memory  
Memory - Percentage Free Virtual Memory Alarm | Memory  
Memory - Physical Memory Available Alarm | Memory  
Network - Percentage Bandwidth Alarm | Network  
Paging - Disk Activity Alarm | Paging Disk Activity
Paging - File Collision Alarm | Paging File Locations  
Services - Service Not Running Alarm | Services  
VMware - Overhead Alarm | Virtual Machine Usage



## Spotlight Overview page

### Network panel

Component | Collection Name
----------|----------------
 | Network
Open Sessions | Open Sessions
Data Flows | Network


### CPU panel

Component | Collection Name | Notes
----------|------------
CPUs | Processor Details  |
Speed | Processor Details  |
Type | OS and CPU short version | Non configurable
Uptime System | Performance |  
Queue Length | System Performance |  
Virtualization Overhead (Hyper-V) | Hyper-V - Virtual Machine Data |


### Memory panel

Component | Collection Name
----------|------------
*All* | Memory


### Disks panel

 Component | Collection Name
 ----------|------------
 *All* | File Sizes
*Data Flows* | Logical Disks


### System Panel

 Component | Collection Name | Notes
 ----------|-----------------|-----
*General*  | Operating System   
OS | OS and CPU short version | Non configurable


## Processes drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
Processes page | Processes  |  
Processes page, Terminate Process | Kill Process | Non configurable
Processes \| Process Threads page | Threads | Non configurable
Services page | Services |
Services page, Start/Stop/Pause Services | Start/Stop Services | Non configurable
Services \| Service Dependencies page | Service Dependencies   
System Drivers page | System Drivers


## CPU drilldown  

Page, grid, chart | Collection Name
 ----------|------------
CPus page | Processors   
CPUs \| Server Work Queues chart | Server Work Queues   
CPUs \| Kilobytes Transferred chart | Server Work Queues   
Processing page | Processors   
Processing \| Processor Queue Length chart | System Performance   
Processing \| Context Switching chart | System Performance   
Virtual CPU (VMware) | Virtual Machine Usage   
Virtual CPU (Hyper-V) |  Hyper-V - Hypervisor Logical Processor<br>Hyper-V - Hypervisor Virtual Processor<br>Hyper-V - Virtual Machine Data


## Memory drilldown  

Page, grid, chart | Collection Name
 ----------|------------
 Summary page | Memory    
 Paging Activity \| Page File Transfers chart | Memory    
 Paging Activity \| Page Faults chart | Memory    
 Paging Activity \| Page Files grid | Paging Files   
 Cache \| Cache Hit Rate chart | File Cache   
 Cache \| Cache Size chart | Memory    
 Cache \| Physical Cache IO chart | File Cache   
 Cache \| Cache Faults chart | Memory    
 Virtualized Memory (Hyper-V) | Hyper-V - Dynamic Memory VM


## Disks drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
 Logical Disk Activity page | Logical Disks |  
 Physical Disk Activity page | Physical Disks |  
 Disk Summary \| Physical Disks grid | Physical Disk Drive |  
 Disk Summary \| Logical Disks grid | Logical Disk Drive | Non configurable. The configurable Logical Disk Drive collection is no longer used.
 File Sizes page | File Sizes |

## Network drilldown  

Page, grid, chart | Collection Name
----------|------------
 Network page | Network    
 TCP IP \|TCP Segments chart | Network TCP    
 TCP/IP \| IP Fragments chart | Network IP   
 TCP IP \|UDP Datagrams chart | Network TCP   
 TCP IP \| IP Datagrams charts | Network IP   
 NBT page | NBT    
 Sessions page | Open Sessions   
 Shares page | Shares    
 Shares \| Open Connections grid | Open Shares   
 Virtualized Network (Hyper-V) | Hyper-V - Virtual Network Adapter


## Event Logs drilldown  

Page, grid, chart | Collection Name | Notes
------------------|-----------------|------
*All* | Event Logs | Non configurable   


## Activity drilldown  

Page, grid, chart | Collection Name
----------|------------
Summary page | Network   
Summary page | Processors   
Summary page | System Performance   
Custom Counters page | Custom Counters - Windows



## SQL Server drilldown \| Support Services \| DTC

Page, grid, chart | Collection Name
----------|------------
*All* | DTC Information


{% include links.html %}
