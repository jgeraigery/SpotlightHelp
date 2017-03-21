---
title: SQL Azure collections
last_updated: July 29, 2016
tags: [collections,collections_for_each_connection_type]
summary: "Data is collected from the SQL Azure connection from the following Spotlight collections."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_collections.html
folder: ConnectSQLAzure
---

 



## How to configure Spotlight collections

Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduling**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.


## Spotlight Overview page

### Sessions panel

Component | Collection Name
----------|----------------
Response Time | SQL Azure - Response Time
Connections | SQL Azure - Connections
Computers | SQL Azure - Computers
Active | SQL Azure - Sessions
Data Flows: Sessions to SQL Processes | SQL Azure - Connections

### SQL Processes panel

Component | Collection Name
----------|----------------
SQL Processes panel components | SQL Azure - Sessions
Data Flows: SQL Processes to Data Storage | SQL Azure - Sessions

### Data Storage panel

Component | Collection Name
----------|----------------
Data Storage panel components | SQL Azure - Database Space

### Version panel

Component | Collection Name
----------|----------------
Version   | SQL Azure - Version

## SQL Activity drilldown

Page | Collection Name | Notes
----------|------------|------
Sessions page | SQL Azure - Session List |
Session Locks | SQL Azure - Locks List | Non configurable

## Databases drilldown

Page | Collection Name
----------|----------------
Summary page | SQL Azure - Database Space   
Tables page | SQL Azure - Database Tables   
Indexes page | SQL Azure - Database Indexes


{% include links.html %}
