---
title: Disk Queue Length Alarm
last_updated: July 29, 2016
summary: "The Disk Queue Length alarm becomes active when the maximum disk queue length of any disk exceeds a threshold. Sustained high disk queue length is a good indicator that you have a disk subsystem bottleneck, and usually means that I/O times will be degraded."
sidebar: c_windows_sidebar
permalink: windows_alarm_disks_queuelength.html
id: maximum_windows_disk_queue_length.alarm
folder: ConnectWindows
---


{% include note.html content="Since this is a Windows-based alarm, it can be impacted by I/O that was performed by non-SQL Server processes. The occurrence of this alarm does not necessarily indicate a problem with SQL Server instance, however SQL Server (and anything else on the machine that performs disk I/O) will feel the impact of slower disk throughput." %}


When this alarm is raised you should look at:

* The SQL Server \| SQL Activity drilldown \| Summary page to see if SQL Server is generating high amounts of disk activity. The SQL Server IO graph shows the rate (pages per second) for each type of I/O that SQL Server is performing. If SQL Server is not generating a lot of I/O activity, then it is most likely being caused by some other Windows process, or by Windows itself.
* The Windows Server \| Disks drilldown \| Logical Disk Activity page to see which disk(s) are being hit the hardest. This, and the list of disks that contain SQL Server databases (from the SQL Server \| Databases drilldown), may help to determine if SQL Server is generating the I/O.
* The SQL Server \| SQL Activity drilldown \| Sessions page to see what SQL Server processes are executing at the time, and the SQL currently being executed.
* Consider moving database files to faster disks. If you are not using hardware RAID, consider purchasing a RAID subsystem. If you are using RAID-5 for write-intensive files (such as Database Logs or heavily updated database files), consider moving to a faster RAID implementation (RAID-0 or RAID-10).
* In some cases, you can speed up all disk I/O by reviewing the RAID options on your RAID controllers. One example is to enable disk-write caching, as long as your disk subsystem is protected by battery backups or UPS.

If the Checkpoint process is generating a lot of I/O (see the Ckpt writes statistic on the SQL Server IO graph of the Summary tab), review your Recovery Interval setting in the Configuration drilldown.
