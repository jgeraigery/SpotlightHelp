---
title: Analysis Services Activity drilldown
last_updated: July 29, 2016
summary: "Drilldown on resource usage and activity information for open connections and sessions, and for commands currently executing or last executed on the Analysis Services server."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_drilldown_activity.html
folder: ConnectAnalysisServices
---


## How to open the Activity drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Activity** from the ribbon.
   {% include imageClient.html file="tb_drilldown_sqlactivity.png" alt="Activity drilldown for Analysis Services" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Activity drilldown

{% include note.html content="All times shown in the grids of the Activity drilldown are displayed as Greenwich mean time (GMT)." %}


### Connections page

Investigate open connections on the server. The **Connections** grid provides resource usage and activity information.

### Sessions page

Investigate open sessions on the server. The **Sessions** grid provides resource usage and activity information.

### Commands page

Investigate the commands that are currently executing or last executed. The **Commands** grid provides resource usage and activity information for currently executing or last executed commands on the server.

{% include note.html content="The Commands page requires SQL Server Analysis Services 2008 or later." %}



{% include links.html %}
