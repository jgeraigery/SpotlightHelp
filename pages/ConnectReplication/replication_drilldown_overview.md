---
title: Spotlight Overview page for Replication connections
last_updated: July 29, 2016
tags: [overview_page,overview_page_for_each_connection_type]
summary: "Diagnose bottlenecks and problem areas for a single SQL Server Replication connection."
sidebar: c_replication_sidebar
permalink: replication_drilldown_overview.html
folder: ConnectReplication
---



## How to open (and Use) the Spotlight Overview page
The Spotlight Overview page can be opened from:
* [Spotlight Client][enterprise_display_overview]
* [Spotlight Mobile][mobile_overview]

## The Spotlight Overview page for SQL Server Replication
The Spotlight Overview page is made up of components and flows tailored to the SQL Server Replication architecture. Refer to the sidebar navigation of this help system for more information on a specific component or flow.

### Overview of the components in a replication environment

Microsoft uses a publishing metaphor to describe its SQL Server Replication model. In this model, the servers and processes involved in replication can be likened to the roles within a publishing environment.

This list briefly describes each of the components in a replication environment.

#### Publisher
 Makes data available for subscription to other servers within the replication environment.

#### Distributor
 Hosts the distribution database. The Distributor can be local or remote to a Publisher.

#### Subscriber
 Receive the replicated data.

#### Publication
 A collection of one or more articles from a database.

#### Article
 A table or partition of data, or a database object, specified for replication.

#### Subscription
 A request made by either a Publisher or Subscriber for a copy of data.

#### Agents
 Replication processes responsible for managing, copying, and moving data between publishers and subscribers. Examples of agents include:

* Distribution agent
* Snapshot agent
* Log Reader agent
* Merge agent
* Queue Reader agent
* Miscellaneous agents


{% include links.html %}
