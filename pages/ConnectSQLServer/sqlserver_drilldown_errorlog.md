---
title: Error log drilldown
last_updated: July 29, 2016
summary: "The SQL Error Log drilldown provides access to both the SQL Server Error Log and the SQL Server Agent Error Log."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_errorlog.html
folder: ConnectSQLServer
---


## How to open the Error log drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Error log** from the ribbon.
   {% include imageClient.html file="tb_drilldown_errorlog.png" alt="Error log drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}

{% include note.html content="By default, Spotlight automatically retrieves the first log in the list above the grid if the log is less than 1MB in size. If the log is larger than 1MB then Spotlight will wait for you to click **Refresh** to retrieve the log file. Retrieving large error logs can impose significant load on the server." %}


## SQL Server Error Logs
Shows the contents of current and archived SQL Server error logs.

## SQL Agent Error Logs
Shows the contents of the SQL Server Agent Error Log.

{% include note.html content="Where the SQL Server host is Unix/Linux, SQL Agent Error Logs are not supported." %}

## Tips to using the drilldown

* To display the current contents of the SQL Server error log, click **Refresh**.
   {% include imageClient.html file="tb_drilldown_errorlog_cycle.png" alt="Refresh" %}
* To view an archived error log, select the log from the list and click **Refresh**.
   {% include imageClient.html file="tb_drilldown_errorlog_cycle.png" alt="Refresh" %}
* For performance reasons, Spotlight limits the number of records that can be viewed in this drilldown. By default, it will show the last 500 records that have been logged. To change the number of records:

    1. Click **Filter**.
       {% include imageClient.html file="tb_action_changefilter.png" alt="Filter" %}
    2. Enter a value in the Max Records field.
    3. Click **Refresh**.
       {% include imageClient.html file="tb_drilldown_errorlog_cycle.png" alt="Refresh" %}

* The SQL Server Error Logs grid displays the contents of the error log selected in the list above the grid. As this is a snapshot of the selected error log it is not updated automatically.
* Click **Cycle** to archive the current error log file and open a new log file. The oldest log file may be deleted. Only members of the Spotlight Diagnostic Administrators group can use the Cycle Error Log option.
   {% include imageClient.html file="tb_drilldown_errorlog_cycle.png" alt="Cycle" %}
* To define and edit the alert rules that Spotlight scans the SQL Server Error Log for, click **Error Log Entries**.
   {% include imageClient.html file="tb_drilldown_errorlog_scanning.png" alt="Error Log Entries" %}


{% include links.html %}
