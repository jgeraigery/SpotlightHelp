---
title: Analysis Services Memory drilldown
last_updated: July 29, 2016
summary: "Drilldown on memory usage for the Analysis Services server."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_drilldown_memory.html
folder: ConnectAnalysisServices
---

Investigate memory usage for the Analysis Services server.


## Memory drilldown

### Cache chart

The Cache chart shows performance counters from Analysis Services. For information on the counters shown in the Cache chart, search Microsoft SQL Server Books Online for "Agg Cache Object".

{% include tip.html content="To switch between statistics, click the arrow next to the chart name." %}

### Proactive caching chart

Shows statistics for proactive caching.

Proactive caching is a feature in Analysis Services that prevents cubes from becoming out of date by automatically updating them according to configurable parameters.

### Memory chart

Memory usage of the server process.

### Threads chart

Shows statistics for the different thread pools. To see statistics for a different thread pool, click the arrow next to the chart name.



{% include links.html %}
