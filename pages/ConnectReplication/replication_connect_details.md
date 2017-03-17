---
title: Connection Details for SQL Server Replication
last_updated: July 29, 2016
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Monitor a SQL Server Replication environment by supplying the following connection details to Spotlight."
sidebar: c_replication_sidebar
permalink: replication_connect_details.html
folder: ConnectReplication
---

{% include note.html content="Spotlight connects to SQL Server Replication for SQL Server 2005 and later." %}


## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details.

## Connection details

### Address

Specify the connect string for a distributor database in the replication environment.

That is the: Server Name, Server Instance Name, or IP address.

### Authentication

Specify the authentication for Spotlight to use to connect to the SQL Server Replication environment.

Select **Windows Authentication (using Diagnostic Server credentials)** to use the Windows user configured to run the Spotlight Diagnostic Server.

Alternatively, fill in the **User** and **Password** fields.


## Test the connection
On entering / modifying connection details in the Spotlight Client, click **Test** to test the connection.


{% include links.html %}
