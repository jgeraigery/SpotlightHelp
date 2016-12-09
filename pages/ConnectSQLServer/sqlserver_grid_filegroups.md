---
title: File Groups grid
last_updated: July 29, 2016
summary: "The File Groups grid shows information on all file groups in the selected databases."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_filegroups.html
id: Databases2_FileGroups.FileGroupsGrid
folder: ConnectSQLServer
---



## Information available from this grid includes:

### Database Name

The name of the specified database.

### File Group

The name of each file group in the database.

### \# File Count

The number of files in each file group (excluding the Transaction Log).

### Total MB

The total size of all files in the group.

### Used MB

The total size of used space in all files in the group, measured in megabytes.

### Free MB

The amount of space allocated but not used in all files in the file group.

### Can Grow

An indication of the files in the file group (if any) that can grow.

### Growths Remaining

For data files that can grow and show few growths remaining, consider allocating more disk space for the data files to grow. Use the **Databases \| Data Files \| Data Files grid** to check the Auto Grow and Growth Increment.

### Disk(s)

The list of disks where the files in the file group reside.

### Type

The type of file group. For example, data or log file.

### Free Pct

The percentage of that space not allocated to any objects.

### Used Pct

The percentage of space allocated to objects.


## How to highlight records

You can restrict the file groups included in the charts by highlighting only the records you are interested in. Hold down the **Shift** or **CTRL** key to select multiple file groups.


{% include links.html %}
