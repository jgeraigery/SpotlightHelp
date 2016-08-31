---
title: Data Files Grid
last_updated: July 29, 2016
summary: "The Data Files grid shows all files (excluding the Transaction Log) in the selected databases."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_datafiles.html
id: Databases2_DataFiles.DataFilesGrid
folder: ConnectSQLServer
---


Information that can be obtained from this grid, when the **Data Files** page is open, includes:

## Database Name

The name of the specified database.

## Files

The name of the data file.

## File Group

The name of the file group to which the file belongs.

## Total MB

The size of the file.

## Used MB

The amount of file space that is actually used, measured in megabytes.

## Free MB

The amount of unused space, measured in megabytes.

## Used Pct

The percentage of space allocated to objects.

## AutoGrow

Whether the file can grow automatically as it fills.

## Growths Remaining

For data files that can grow and show few growths remaining, consider allocating more disk space for the data files to grow. Check also the Auto Grow and Growth Increment values.

## Max Size

The maximum size that the file can grow to.

## Growth Inc.

Growth increment. The amount by which the file can **AutoGrow** at any one time.

## Path

The location of the file.

## Free Pct

The percentage of space not allocated to any objects.

## Type

The type of file group. For example, data or log.

You can restrict the files included in the charts by highlighting just the records you are interested in. Hold down the **Shift** key to select a block of multiple files or the **CTRL** key to select individual files.

To filter the files displayed in the grid, type a category of file group into the File Group field and then click **Apply Filter**. Only those files that belong to the specified file group are displayed in the grid. You can use the percent sign (%) as a wildcard.


{% include links.html %}
