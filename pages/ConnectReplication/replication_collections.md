---
title: Replication collections
last_updated: July 29, 2016
tags: [collections,collections_for_each_connection_type]
summary: "Data is collected from the SQL Server Replication connection from the following Spotlight collections."
sidebar: c_replication_sidebar
permalink: replication_collections.html
folder: ConnectReplication
---





## How to configure Spotlight collections

Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduliing**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.


## Alarms

Alarm | Collection Name
------|-----------------
Replication - Distribution Agent Failure | Replication Agents
Replication - Log Reader Agent Failure | Replication Agents
Replication - Merge Agent Failure | Replication Agents
Replication - Miscellaneous Agent Failure | Replication Agents
Replication - Queue Reader Agent Failure | Replication Agents
Replication - Snapshot Agent Failure | Replication Agents
Replication - Estimated Time To Apply Alarm | Replication Subscriptions
Replication - Distribution Latency | Replication Agents
Replication - Log Reader Latency | Replication Agents
Replication - Publication Expiration Alarm | Replication Publications
Replication - Publication Failure Alarm | Replication Publications
Replication - Publisher Failure Alarm | Replication Publishers
Replication - Subscription Failure Alarm | Replication Subscriptions
Replication - Undistributed Commands Alarm | Replication Subscriptions

## Spotlight Overview page

### Publishers panel

Component | Collection Name
----------|----------------
Publishers | Replication Publishers   
Publications | Replication Publications

### Distributor panel

Component | Collection Name
----------|----------------
Data flows: *All* | Replication Agent Summary

### Subscribers panel

Component | Collection Name
----------|----------------
Subscribers | Replication Subscribers   
Subscriptions | Replication Subscriptions   
Max Unidst. Commands | Replication Subscriptions   

### System panel

Component | Collection Name | Notes
----------|-----------------|------
Version | Replication Version | Non configurable


## Activity drilldown

Page, chart, grid | Collection Name | Notes
------------------|-----------------|------
Publications page | Replication Publications |
Subscriptions page | Replication Subscriptions |
Agents \| Performance chart | Replication Agents |
Agents \| Sessions grid | Replication Agent Sessions | Non configurable
Agents \| Top 200 Actions grid | Replication Agent Session Actions | Non configurable




{% include links.html %}
