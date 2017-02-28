---
title: Unix/Linux Collections
tags: [collections,collections_for_each_connection_type]
summary: "The following collections are used for the Unix/Linux displays."
sidebar: c_unix_sidebar
permalink: unix_collections.html
folder: ConnectUnix
---


## Alarms

Alarm     | Collection Name
----------|----------------
Blocked Processes Alarm	| Processors
CPU Usage Alarm	| Processors
File System Space Alarm	| Filesystem_Space
Memory - Physical Memory Available Alarm | TotalRAM
Most Active Disk Alarm | Disk_Activity
Network Errors In Alarm	| Network
Network Errors Out Alarm | Network
Paging In Alarm | Paging
Paging Out Alarm | Paging
Swap Space Alarm | Swap
Swapping In Alarm | Processors
Swapping Out Alarm | Processors
Zombie Processes Alarm | Process_Counts


## Spotlight Overview page

Component | Collection Name
----------|----------------
Network panel (NIC Bandwidth,Network In/Out ,Network Errors In/Out ) | Network
Network panel (Network Users) | Network_Users
Network panel (Established, Time_Wait, Close_Wait) | Network_Connections
CPU panel (CPUs, Speed, Type) | CPUInfo
CPU panel (CPU usage, User%, System%, Wait%, Queue Length, Blocked, Swapping In/Out) | Processors
CPU panel (Total, Zombies) | Process_Counts
Paging In/Out Flow | Paging
Memory panel Physical Memory | TotalRAM
Memory panel Virtual Memory	| Swap
Swap Space panel | Swap
Storage panel (Disks,Total disk writes per second,Total disk reads per second) | Disk_Activity
Storage panel (File Systems) | Filesystem_Space
System panel (OS) | FirstConnectionVersion
System panel (Uptime) | Uptime

{% include links.html %}
