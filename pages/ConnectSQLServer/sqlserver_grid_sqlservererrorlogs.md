---
title: SQL Server Error Logs Grid
last_updated: July 29, 2016
summary: "The SQL Server Error Log page shows the contents of current and archived SQL Server error logs."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sqlservererrorlogs.html
id: SQLErrorLog_SoSSE.ErrorLogGrid
folder: ConnectSQLServer
---


<note type="note">The SQL Server Error Logs grid displays the contents of the error log selected in the list above the grid. As this is a snapshot of the selected error log it is not updated automatically. To display the current contents of the SQL Server error Log, click **Refresh**. To view an archived error log, select the log from the list and click **Refresh**.</note>

## It contains the following controls:

### List of current and archived error logs

Use this list to choose the error log whose details you want to view in the Error Log grid below.

### Refresh

Click **Refresh** to view the error log selected in the list.

### Cycle

Click **Cycle** to archive the current error log file and open a new log file. Your oldest log file may be deleted.

 <note type="note">Only members of the Spotlight Diagnostic Administrators group can use the Cycle option.</note>

## Error Log grid

This displays details of the errors logged in the file chosen via the list at the top of the page. The columns in the grid are:

### Date/Time

The date and time that the specified error was logged.

### Process Info

The source of the entry in the error log.

### Message

A brief description of the error.

The SQL Server Error Logs grid displays the contents of the error log selected in the list above the grid. As this is a snapshot of the selected error log it is not updated automatically. To update the SQL Server Error Logs grid, click **Refresh**.

For performance reasons, Spotlight on SQL Server limits the number of records that can be viewed in this page. By default, it will show the last 500 records that have been logged. To change the number of records, enter a value in the Max Records field above the SQL Server Error Log grid and then click **Refresh**.

By default, Spotlight on SQL Server retrieves the first log in the list above the grid, if the log is less than 1MB in size. If the log is larger than 1MB, Spotlight will not retrieve it unless you click **Refresh**. Retrieving large error logs can impose significant load on the server.

To define and edit the alert rules that Spotlight scans the SQL Server Error Log for, click **Error Log Scanning**.


{% include links.html %}
