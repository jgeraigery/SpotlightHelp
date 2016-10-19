---
title: Memory - Physical Memory Available Alarm
last_updated: July 29, 2016
summary: "The Memory - Physical Memory Available alarm is raised when the available memory drops below a threshold."
sidebar: c_unix_sidebar
permalink: unix_alarm_memory_physicalmemoryavailable.html
folder: ConnectUnix
---


If the file system fills up completely, no more data can be written to it. For example:

* If the /var file system fills, you may have problems with system activities such as e-mail or printing.
* If the /home file system fills, user applications may be affected.
* If the /tmp file system fills, any applications that use temporary files may be affected.


The data displayed in the Least Space / Disk Space container is collected from the file system that has the least amount of free space, OR a user-specified file system on the Unix host. To choose the file system whose details are displayed in the container, right-click the container and select **Disk Options**.
