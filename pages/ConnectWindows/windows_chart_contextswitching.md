---
title: Context switching chart
last_updated: July 29, 2016
summary: "This shows the combined rate at which all processors on the computer are switched from one thread to another."
sidebar: c_windows_sidebar
permalink: windows_chart_contextswitching.html
id: CPUProcessing.ContextSwitchingChart
folder: ConnectWindows
---


Context switches occur when a thread is "bumped" or voluntarily relinquishes control of a processor - that is, the  context  of a processor switches to another process.

High context switching can be bad for the following reasons:

1. Switching a thread off one processor may mean it starts rerunning on another processor (on a multiprocessor system). This can mean that data held in L2 cache (or L3 cache) may be defunct, forcing the application thread to go to standard RAM to retrieve data.
2. High context switching may indicate that threads are being blocked (and therefore relinquishing control of a processor). The ideal on a multiprocessor system is to have as each processor busy running separate threads at all times; context switching can add overhead and indicate an inefficient use of the multiprocessor system by an application.


{% include links.html %}
