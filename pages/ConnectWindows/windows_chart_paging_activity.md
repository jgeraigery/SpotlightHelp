---
title: Paging chart
last_updated: July 29, 2016
summary: "Shows the rate at which pages are being swapped in and out of memory."
sidebar: c_windows_sidebar
permalink: windows_chart_paging_activity.html
id: MemorySummary.SpotlightChart2
folder: ConnectWindows
---


A sustained high rate of paging can cause problems with overall system degradation due to disk thrashing and CPU load.


## Page ins

### Includes **hard pages**

Paging requests that have to go to the paging file on disk


### Not **soft pages**

Requests for memory pages that are not in the program's working set, but still in memory


## Page outs

Shows the number of pages written to the paging file on disk.


{% include links.html %}
