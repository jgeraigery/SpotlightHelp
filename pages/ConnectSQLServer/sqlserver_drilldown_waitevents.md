---
title: Wait Events drilldown
last_updated: July 29, 2016
summary: "The Wait Events drilldown assesses sampled workload waits, that is waits that occur as a result of executing SQL statements (via an XEvents trace). The Wait Events drilldown is designed to assist in identifying SQL Statements involved with specific waits to the extent that this information is actually available."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_waitevents.html
folder: ConnectSQLServer
---



## How to open the Wait Events drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Wait Events** from the ribbon.
   {% include imageClient.html file="tb_drilldown_statementwaits.png" alt="Wait Events drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Wait Events drilldown


### Category and Workload

The category and workload selected qualify the information shown on the grids and charts on this page.

#### Category
Select from the available categories of waits or select **ALL** for all waits.

{% include tip.html content="The **SQL Server \| Performance Health drilldown** shows the categories currently contributing to wait time and in what proportion. Note that data from the Performance Health and Wait Events drilldowns is sourced from different places (and data from the Wait Events drilldown is sampled) so it is not mathematically valid to directly compare them." %}


#### Workload
Select a workload to investigate for the selected category of wait.

The workload items are dependent on the **Category** selected.

Workload | Description
---------|------------
Database | Which database is contributing most to the wait time?
Application | Which application is contributing most to the wait time?
User | Which user is contributing most to the wait time?
Host | Which host is contributing most to the wait time?
Wait Type | Which wait type is contributing most to the wait time?
Statement | Which SQL statement is contributing most to the wait time?

Possible actions you can take once the category and workload are selected:

* Copy a SQL statement to the clipboard or select part of the SQL statement to copy just the selected part to the clipboard.
* To open the SQL statement in an external editor, right click on it.
* To show the SQL statement in the **SQL Server \| Workload Analysis drilldown** right click on it. Workload Analysis will provide execution details of the SQL statement like how many times the query ran.
* Export data from statement nodes to an .xlsx file for further analysis. Select the SQL statement then click {% include inline_imageClient.html file="tb_grid_save.png" alt="Wait Events export" %}. Data includes: STATEMENT, WAIT TIME, % OF TOTAL WAIT, % OF TOTAL AVAILABLE CPU TIME.


### Grids and Charts

Possible actions you can take on the grids and charts:

* When a Workload Statement is selected, click **View Workload Analysis** to show the statement in the SQL Server \| Workload Analysis drilldown. Workload Analysis will provide execution details of the SQL statement like how many times the query ran.
* Use **Export all the statements** to save all SQL statements to a file (default filename SQLStatementList.sql). If the exporting tree list is large, Spotlight will save to multiple files; each output file no greater than 10Mb.


#### Category : Category and Workload wait

Grid  | Description
------|------------
Wait Type | The wait type impacting on wait time.
Wait Time | The wait time spent on this wait type aggregated over the last hour.
% of Total Wait | The proportion of wait time spent on this wait type, compared to other wait types of the selected workload.
% of Total Available CPU Time | The proportion of available CPU time spent on this wait type over the time frame selected on this drilldown page.



#### Category : Selected item compared to All

Chart | Description
------|------------
Selected item compared to *All* | Show on a time series chart the wait time rate (ms/s) attributed to the selected workload item and the selected category of wait.
Current selected item compared | Show on a pie chart the wait time rate (ms/s) currently attributed to the selected workload item as a proportion of the selected category of wait.

#### Category : Selected category compared to Total

Chart | Description
------|------------
Selected category comparison | Show on a time series chart the wait time rate (ms/s) attributed to the selected category and the total wait time rate.
Current Wait category comparison | Show on a pie chart the wait time rate (ms/s) currently attributed to the selected category as a proportion of the total wait time rate.


{% include links.html %}
