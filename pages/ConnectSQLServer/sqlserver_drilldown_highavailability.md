---
title: High Availability drilldown
last_updated: October 16, 2017
summary: "The High Availability drilldown shows statistics about the servers involved in transaction log shipping and database mirroring."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_highavailability.html
folder: ConnectSQLServer
---



## How to open the High Availability drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| High Availability** from the ribbon.
   {% include imageClient.html file="tb_drilldown_highavailability.png" alt="High Availability drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the High Availability drilldown

{% include note.html content="Mirroring alarms are disabled by default. It is important to configure alarm thresholds that are appropriate to your environment before enabling these alarms. Use the Spotlight Client to **Configure \| Alarms**." %}

{% include note.html content="The High Availability drilldown is not supported for SQL Server hosted on Unix/Linux operating systems." %}


### Transaction Log Shipping page

#### Transaction Log Shipping Primaries grid
Shows statistics relating to the primary database in the log shipping configuration.

#### Transaction Log Shipping Secondaries grid
Shows details about the secondary database involved in the log shipping configuration for the primary database selected in the grid above.

#### Transaction Log Shipping History grid
If the Primaries page is selected, this grid shows the history for backup jobs on the primary database. If the Secondaries page is selected, this grid shows the history for copy and restore jobs on the secondary database.

#### Transaction Log Shipping Secondaries grid
Shows statistics relating to the secondary database in the log shipping configuration.




### Database Mirroring page

#### Database Mirroring grid
Shows statistics relating to either the principal or mirror server depending on which server Spotlight is connected to.

#### Database Mirroring Details
Shows the size of the unsent log on the principal server, the size of the redo queue on the mirror server, and the send rate between the two.




{% include links.html %}
