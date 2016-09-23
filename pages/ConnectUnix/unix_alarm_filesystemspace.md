---
title: File System Space Alarm
last_updated: July 29, 2016
summary: "The File System Space alarm indicates that the filesystem is full or filling up."
sidebar: c_unix_sidebar
permalink: unix_alarm_filesystemspace.html
id:
folder: ConnectUnix
---

If the filesystem fills up completely, no more data can be written to it. For example:

* If the /var filesystem fills, you may have problems with system activities such as e-mail or printing.
* If the /home filesystem fills, user applications may be affected.
* If the /tmp filesystem fills, any applications that use temporary files may be affected.


The data displayed in the Least Space / Disk Space container is collected from the filesystem that has the least amount of free space, OR a user-specified filesystem on the Unix host. To choose the filesystem whose details are displayed in the container, right-click the container and select Disk Options.


{% include links.html %}
