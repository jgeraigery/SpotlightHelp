---
title: Connection Details for Availability Group
last_updated: July 29, 2016
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Specify the connection details for Availability Group"
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_connect_details.html
folder: ConnectAvailabilityGroup
---


An availability group is a set of user databases that fail over together. An availability group consists of a primary availability replica and one to four secondary replicas that are maintained through SQL Server log-based data movement for data protection without the need for shared storage. Each replica is hosted by an instance of SQL Server on a different node of the Windows Server Failover Cluster (WSFC). The availability group and a corresponding virtual network name are registered as resources in the WSFC.

{% include tip.html content="The Availability Groups connection type requires SQL Server 2012 or above." %}

## How to enter / edit connection details

 Use a Spotlight Client to enter / edit connection details.

 From the Spotlight Client

 1.  Click **Configure \| Connections**.
 2.  Double click **Add new connection**.
 3.  Fill in the connection details as follows.
 4.  Click **Test** to test the connection.


## Address

The Availability Listener: IP address, hostname, or URL.

## Authentication

The authentication for Spotlight to use to connect to the Availability Listener.

Select Windows Authentication (using Diagnostic Server credentials) to use the Windows user configured to run the Spotlight Diagnostic Server.

Alternatively, fill in the User and Password fields. Ensure the account has sufficient privileges to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the listener allows this.


{% include links.html %}
