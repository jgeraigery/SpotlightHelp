---
title: OLAP grid
last_updated: July 29, 2016
summary: "The OLAP page provides an overview of the OLAP Services or Analysis Services product currently running on your system."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_olap.html
id: supportservices2_olap.olapgrid
folder: ConnectSQLServer
---


{% include note.html content="The OLAP page is available only when connected to SQL Server 2000." %}

## About the OLAP grid

OLAP Services (known in SQL Server 2000 and later as Analysis Services) is a server product that performs online analytical processing (OLAP)
and data mining on SQL Server systems. For more information, see the MSDN Library Web site (<xref href="http://msdn.microsoft.com/library/" scope="external" format="html">http://msdn.microsoft.com/library/</xref>).

## The OLAP grid contains the following columns:

### Current Connections

The current number of client connections established on the specified Analysis server.

### Total Dimensions

The total number of dimensions defined on the specified Analysis server. Dimensions are an organized hierarchy of categories that describe data in the fact table.

### Total Members

The total number of members defined on the specified Analysis server. Members are items within dimensions.

### Total Properties

The total number of member properties defined on the specified Analysis server. These are additional properties of members.

{% include links.html %}
