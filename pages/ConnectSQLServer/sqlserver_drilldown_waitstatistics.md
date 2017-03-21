---
title: Wait Statistics drilldown
last_updated: July 29, 2016
summary: "Investigate where waits are occurring and what is being waited for"
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_waitstatistics.html
folder: ConnectSQLServer
---

When troubleshooting SQL Server performance issues, one area you can focus your investigation on is waits. Long wait times can be an indicator of performance bottlenecks so identifying where waits are occurring may assist you in your tuning efforts.

Spotlight not only provides an easy way to see if your SQL server has a problem with waits but also identifies on which particular resource waits are occurring. Spotlight takes the raw data from SQL Server and automatically calculates the rate of wait over time so you have a more current perspective.


## How to open the Wait Statistics drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Wait Statistics** from the ribbon.
   {% include imageClient.html file="tb_drilldown_waits.png" alt="Wait Statistics drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Wait Statistics drilldown


### Wait Time Trend chart
Shows the total wait time in milliseconds broken down for the for the following wait types:

* Wait (AlwaysOn)
* Wait (Backup)
* Wait (CLR)
* Wait (DBM)
* Wait (DTC)
* Wait (IO)
* Wait (Latch)
* Wait (Lock)
* Wait (Memory)
* Wait (MISC)
* Wait (Network)
* Wait (Preemptive)
* Wait (ServiceBroker)
* Wait (SOS)

Use this chart to look for trends in wait types over time.

### Waits Details grid
Shows detailed wait statistics for the SQL Server instance currently being monitored. It shows all wait types and breaks down the statistics into signal time and resource wait time. By default, the Waits Detail grid is sorted by Wait Time Rate (ms/s) which allows you to immediately see which wait types are being waited on right now.

{% include links.html %}
