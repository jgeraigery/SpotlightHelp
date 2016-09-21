---
title: Index Distribution Chart
last_updated: July 29, 2016
summary: "When a single index is selected in the Indexes grid above, the Index Distribution chart shows the index distribution histogram for the selected index."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_indexdistribution.html
id: Databases2_Indexes_Stats.IndexStatsChart
folder: ConnectSQLServer
---

When SQL Server collects statistics on an index for use in determining the indexes usefulness for resolving queries, it samples the data in the index and produces a histogram of the key values found.

This chart shows that histogram for the selected index.

The values shown here are from the latest statistics for the selected index. If the index statistics are out of date, so too will these values be. Check the **Last Updated** statistic on the **Statistics** page for the date when statistics were last collected. Use the **Update Statistics** command (available by right-clicking an entry in the Indexes table) to re-collect statistics.

Each series in the chart corresponds to one sample value from the **first column** in the index. The chart shows the number of rows in the table that fall that have that value.

Note that SQL Server uses sampling only and does not inspect every key value. The histogram shows the percentage of the table that falls in a sample range. Not all of the records counted will have the exact sample value shown.


## Example:

if the selected index is on a **Name** column, the chart may show the values:

```
<table>
<tgroup cols="2">
<colspec colname="COLSPEC0" colwidth="121*"/>
<colspec colname="COLSPEC1" colwidth="76*"/>
<tbody>
<row>
<entry>ABRAHAM</entry>
<entry>5</entry>
</row>
<row>
<entry>GEORGE</entry>
<entry>20</entry>
</row>
<row>
<entry>PETER</entry>
<entry>25</entry>
</row>
<row>
<entry>STEVEN</entry>
<entry>30</entry>
</row>
<row>
<entry>ZACH</entry>
<entry>20</entry>
</row>
</tbody>
</tgroup>
</table>
```

This means 5 of the people have a name that is alphabetically before or equal to ABRAHAM, 20 are between ABRAHAM and GEORGE, 25 between GEORGE and PETER, and so on.

This chart can be used to identify **skewed** indexes. These are indexes that have a very uneven distribution of data. For example, if 95% of the table has the same value for a key, it is difficult for SQL Server to determine if it is a useful index or not. Searches on values that fall in the 5% might find the index very useful, but searching on the value that occurs 95% of the time are not so useful.

{% include note.html content="The Index Distribution chart does not apply to SQL Server 2000." %}



{% include links.html %}
