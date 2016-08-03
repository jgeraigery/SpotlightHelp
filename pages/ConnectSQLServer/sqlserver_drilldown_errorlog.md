---
title: Error log drilldown
last_updated: July 29, 2016
summary: "The SQL Error Log drilldown provides access to both the SQL Server Error Log and the SQL Server Agent Error Log."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_errorlog.html
folder: ConnectSQLServer
---


By default, Spotlight retrieves the first log in the list above the grid, if the log is less than 1MB in size. If the log is larger than 1MB, Spotlight will not retrieve it unless you click Refresh. Retrieving large error logs can impose significant load on the server.


## SQL Server Error Logs page

### SQL Server Error Logs grid
Shows the contents of current and archived SQL Server error logs.

## SQL Agent Error Logs

### SQL Agent Error Logs grid
Shows the contents of the SQL Server Agent Error Log.




Note:

* To display the current contents of the SQL Server error log, click **Refresh**.



* To view an archived error log, select the log from the list and click **Refresh**.



* For performance reasons, Spotlight limits the number of records that can be viewed in this drilldown. By default, it will show the last 500 records that have been logged. To change the number of records:

    1. Click **Filter**.



    2. Enter a value in the Max Records field.
    3. Click **Refresh**.



* The SQL Server Error Logs grid displays the contents of the error log selected in the list above the grid. As this is a snapshot of the selected error log it is not updated automatically.
* Click Cycle to archive the current error log file and open a new log file. The oldest log file may be deleted. Only members of the Spotlight Diagnostic Administrators group can use the Cycle Error Log option.



* To define and edit the alert rules that Spotlight scans the SQL Server Error Log for, **click Error Log Entries**.


{% include links.html %}
