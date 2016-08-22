---
title: Page Faults chart
last_updated: July 29, 2016
summary: "The Page Faults chart shows the rate at which Windows is processing page faults."
sidebar: c_windows_sidebar
permalink: windows_chart_pagefaults_memory.html
id: MemoryPaging.SpotlightChart3
folder: ConnectWindows
---

It compares the two types of page fault (**soft** and **hard**) and makes it easy to see the ratio between them.

A **Page Fault** occurs when a process references a page that is
not in that processes **working set** (the set of pages visible to
that process in physical memory). When this happens, the process has to
wait while the Windows Virtual Memory Manager retrieves the page from virtual memory.

A **soft** page fault occurs when Windows finds the required page somewhere in physical memory.

A **hard** page fault occurs when the page is not in physical memory and Windows has to read it from the page files. This is by far the more expensive of the two as it involves disk I/O. Hard page faults cause **Paging** and can degrade performance significantly.



{% include links.html %}
