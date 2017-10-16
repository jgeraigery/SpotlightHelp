---
title: Fragmentation grid
last_updated: October 16, 2017
summary: "The Fragmentation grid displays all indexes in the selected tables and shows the latest fragmentation information that Spotlight has collected for each one."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_fragmentation.html
id: databases2_indexes_frag.fraggrid
folder: ConnectSQLServer
---


When collecting fragmentation information, Spotlight runs a **DBCC SHOWCONTIG** command on each selected index. Note that running DBCC SHOWCONTIG on large tables can take a long time and can put significant load on your server.

For information about the Fragmentation statistics displayed on the Fragmentation page, see the DBCC SHOWCONTIG topic in the Transact-SQL Reference section in Microsoft SQL Server Books Online.

## Types of Fragmentation

The following types of fragmentation can occur in SQL Server tables: Internal and External fragmentation.

### Internal Fragmentation

is the term used when your index pages have a lot of free space in them. In this case each index page is only partially used and the index takes up more disk space than it really needs. Extra I/O operations will be required to read the same number of index entries. Note that creating indexes with high Fill Factor values will cause internal fragmentation.

### External Fragmentation

is the term given to the case where the logical order of the pages does not match the physical order on disk, or when the extents belonging to the table are not contiguous. This case only affects performance when SQL Server does ordered scans of all or part of the table or index. Examples of operations that could require ordered scans are Range queries (WHERE Column between X and Y, Where Column > z etc) and some join, sort and grouping operations.

External Fragmentation can be categorized into the following types: Logical and Extent.

#### Logical Scan Fragmentation

occurs when the logical order of the pages does not match the physical order on disk.

#### Extent Scan Fragmentation

occurs when extents that the index resides on are not contiguous.

Both internal and external fragmentation can occur when data is modified in the table (e.g. INSERT, UPDATE and DELETE statements). Because of these data modifications, pages can be split or merged together and the fullness of each page can vary over time. For queries that scan part or all of a table, fragmentation can cause additional page reads, which can degrade performance.

## Fragmentation can impact performance in the following ways:

### Less data on each page

High internal fragmentation causes less data to be stored on each page. This can degrade performance in the following ways: Firstly, for operations that must access many pages (such as table and index scans), the fact that there is wasted space on each page means that more pages have to be read to access the same amount of data. Secondly, when pages are loaded into SQL Server's memory cache, more memory is required to hold the same amount of data (or conversely, less data can be held in the same amount of memory). This can cause lower buffer cache hit ratios and higher I/O rates. This second point can affect the performance of any SQL query, as it lowers the chance of finding required pages already in memory.

### Table and Index scans

High external fragmentation can affect SQL Server performance only for full or partial table and index scans. When SQL Server has to read table or index pages in logical order, external fragmentation can cause SQL Server to perform extra I/O and processing. In general, if you do not do many table/index scans then external fragmentation will not cause performance problems. Most online, OLTP, or web applications use direct index lookups to access the required data in a few read operations. These types of applications will normally not suffer any performance degradation when the database has high external fragmentation.


## How fragmented are my tables?

Five values can be used to determine the overall fragmentation in your tables:

### Extent Scan Fragmentation and Logical Scan Fragmentation

are the most important ones. These are expressed as percentage values, and the lower the value the less fragmentation there is. Note that both these Scan Fragmentation values are meaningless for Heaps (tables without indexes). Also, Logical Scan Fragmentation is meaningless for text structures. Spotlight displays a value of -1 for these index types when either of these are the case.

### Average Page Density

shows you how full each page is. This will be affected by the FILL FACTOR setting used when creating the index: for example immediately after creating an index with a FILL FACTOR of 30, the Average Page Density for that index will be 30. This value will then change as data in the table is modified. Average Page Density can be though of as the "real" fill factor at the time the data was collected as opposed to the "original" fill factor that was specified when the index was created. The Original Fill Factor is used when an index is created to leave free space in index pages to allow for the insertion of new records without having to split the page. Because Avg Page Density is based on the original fill factor, there are no hard and fast rules to determining what is good and bad. In general, and a higher value indicates low internal fragmentation.

### Fill Factor Variance

is a statistic computed by Spotlight to compare the Average Page Density with the original fill factor that was used when the index was created. It is calculated as the absolute difference between AvgPage Density and Original Fill Factor. It shows you how much the fill factor of the index has changed since the index was created. A high value indicates high internal fragmentation.

### Scan Density

is a value computed by dividing the optimal number of extent switches by the actual number of extent switches. Gives you an indication of how much external fragmentation exists. It is expressed as a percentage value where higher values indicate less fragmentation. Scan density is meaningless when your table resides on more than one file. Spotlight displays a value of -1 when this is the case.


## Removing Fragmentation

There are several options available to eliminate (or at least reduce) fragmentation. In general, you need to get SQL Server to rebuild the indexes that are fragmented.

The following are the best methods for reducing fragmentation:

* **DBCC DBREINDEX** can be used to rebuild all indexes on the table. Nobody else can use the table while this command runs.
* Running **DROP INDEX** and **CREATE INDEX** to rebuild the indexes will eliminate any fragmentation. This, however, can be complicated when the index you need to defrag supports a constraint such as a **Primary Key**. SQL Server will not let you drop the primary key while there are foreign keys referencing it. This problem can be alleviated somewhat by using the **DROP_EXISTING** clause of **CREATE INDEX**. Again, the table will be unavailable to users while this runs.


{% include links.html %}
