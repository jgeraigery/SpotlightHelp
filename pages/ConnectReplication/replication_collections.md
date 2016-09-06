---
title: Replication collections
last_updated: July 29, 2016
tags: [collections]
summary: "The following collections are used for displays (Spotlight Overview page components and drilldowns)."
sidebar: c_replication_sidebar
permalink: replication_collections.html
folder: ConnectReplication
---


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
