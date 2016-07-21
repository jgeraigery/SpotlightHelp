---
title: Spotlight Overview page for Replication connections
tags: overview_page
summary: "The Spotlight Overview page highlights obvious bottlenecks and problem areas."
sidebar: c_replication_sidebar
permalink: replication_drilldown_overview.html
folder: ConnectReplication
---



The Spotlight Overview page provides a unique view of the activity of the system. The Spotlight Overview page highlights obvious bottlenecks and problem areas. Statistics and flows are updated in real time.

## There are many ways to open the Spotlight Overview page

* Click on the Replication connection on the Connections pane.
* Click on the Replication connection on the heatmap display.



## Overview of the components in a replication environment

Microsoft uses a publishing metaphor to describe its SQL Server Replication model. In this model, the servers and processes involved in replication can be likened to the roles within a publishing environment.

This list briefly describes each of the components in a replication environment.

### Publisher
 Makes data available for subscription to other servers within the replication environment.

### Distributor
 Hosts the distribution database. The Distributor can be local or remote to a Publisher.

### Subscriber
 Receive the replicated data.

### Publication
 A collection of one or more articles from a database.

### Article
 A table or partition of data, or a database object, specified for replication.

### Subscription
 A request made by either a Publisher or Subscriber for a copy of data.

### Agents
 Replication processes responsible for managing, copying, and moving data between publishers and subscribers. Examples of agents include:

* Distribution agent
* Snapshot agent
* Log Reader agent
* Merge agent
* Queue Reader agent
* Miscellaneous agents


{% include links.html %}
