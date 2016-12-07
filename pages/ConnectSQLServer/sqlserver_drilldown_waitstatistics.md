---
title: Wait Statistics drilldown
last_updated: July 29, 2016
summary: "Investigate where waits are occurring and what is being waited for"
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_waitstatistics.html
folder: ConnectSQLServer
---



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
Shows detailed wait statistics for the SQL Server instance currently being monitored.




{% include links.html %}
