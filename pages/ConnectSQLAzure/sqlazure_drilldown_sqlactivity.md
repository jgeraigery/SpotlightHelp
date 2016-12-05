---
title: SQL Activity drilldown for SQL Azure
last_updated: July 29, 2016
summary: "Investigate SQL sessions including session details and locks."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_drilldown_sqlactivity.html
folder: ConnectSQLAzure
---


{% include note.html content="When in Playback, history will not be displayed for SQL Azure database information." %}

## How to open the SQL Activity drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| SQL Activity** from the ribbon.
   {% include imageClient.html file="tb_drilldown_sqlactivity.png" alt="SQL Activity drilldown for SQL Azure" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the SQL Activity drilldown

### Sessions grid
The Sessions grid shows all SQL Azure sessions, each row representing a single session. Note that many applications create multiple connections to SQL Azure.

To view more details for a session, select the session on this grid. Additional pages are then displayed in the lower half of the drilldown.

To find a particular session, right-click over the grid and select **Find**.

### SQL Statement
SQL shows the batch of SQL statements last executed or currently executing by the selected session. Select the session from the **Sessions** grid.

You can copy SQL text from the SQL Statement page. Right click and select the appropriate option from the shortcut menu.

### Query Plan
The plan shows the query execution plan for the selected session in XML. Select the session from the **Sessions** grid.

Click **View Plan** to open the plan in SQL Server Management Studio (if installed) and view the query execution plan in graphical format

{% include imageClient.html file="tb_drilldown_session_viewplan.png" alt="View Plan" %}

### Session Locks
Session Locks shows all locks held or requested by the selected session. Select the session from the **Sessions** grid.

If a lock is one on which this session is waiting, the **Status** column will show it as being blocked. This column also highlights locks that are blocking other sessions.




{% include links.html %}
