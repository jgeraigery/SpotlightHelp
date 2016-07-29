---
title: Replication connection details
last_updated: July 29, 2016
tags: [connection_details]
summary: "Specify the connection details for a replication environment."
sidebar: c_replication_sidebar
permalink: replication_connect_details.html
folder: ConnectReplication
---

{% include note.html content="Connections to SQL Server Replication is available for SQL Server 2005 and later." %}


## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details as follows.
4.  Click **Test** to test the connection.


## Address

The connect string for a distributor database in the replication environment.

That is the: Server Name, Server Instance Name, or IP address.

## Authentication

The authentication for Spotlight to use to connect to the SQL Server Replication environment.

Select Windows Authentication (using Diagnostic Server credentials) to use the Windows user configured to run the Spotlight Diagnostic Server.

Alternatively, fill in the User and Password fields.



{% include links.html %}
