---
title: ﻿Paging in Alarm
last_updated: July 29, 2016
summary: "A large number of page ins may be a symptom of a large number of recent page outs."
sidebar: c_linux_sidebar
permalink: linux_alarm_pagingin.html
id:
folder: ConnectLinux
---

To find out what process is reading these pages in, check the resident size of the processes you are running, and see which ones are increasing in size.

A large number of page ins may also occur when a large process has just stopped, and the kernel decides to fill that space with memory pages owned by other processes. Make sure that an important process hasn't died unexpectedly.





{% include links.html %}
