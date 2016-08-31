---
title: Tables Grid
last_updated: July 29, 2016
summary: "The Tables grid shows all tables in the selected databases,  including their size, number of rows, free space and the list of disks on which their file group resides."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_tables.html
id: Databases2_Tables.grdDatabases2_Tables
folder: ConnectSQLServer
---



The columns in the Tables grid are:

### Table Name

The name of the table.

### Database Name

The name of the database that contains the specified table.

### Partition #

The partition where the table is stored.

### Data Space

The data space (filegroup, partition scheme, or FILESTREAM data filegroup) where the table is stored.

### Owner

The name of the table owner.

### Rows

The number of rows in the table.

### Reserved MB

The amount of space reserved for the table in megabytes.

### Free  MB

The amount of free space in the table.

### Pct DB

The percentage of space that the table occupies in the database.

### Table MB

The actual size of the table in megabytes.

### Used MB

The amount of used space in the table.


<note type="note">The number of tables shown in the Tables grid may not match the number displayed in the # Tables column of the Databases grid. This is most evident when viewing table details for the tempdb database and is due to its dynamic nature.</note>

You can restrict the tables included in the charts below by highlighting just the records you are interested in. Hold down the **Shift** key to select a block of multiple records, or the **CTRL** key to select individual records.</p>

The data displayed in this grid can be **Filtered**. Filtering is the method that Spotlight uses to restrict displays to a manageable or relevant set of data. You can filter the results displayed in the Tables grid by the following criteria:

* Top N tables by size or row count
* Data Space name
* Table name

 To filter the results, type appropriate values into the fields above the Tables grid and then click **Apply Filter**.



{% include links.html %}
