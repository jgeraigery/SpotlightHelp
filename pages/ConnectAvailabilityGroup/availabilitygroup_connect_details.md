---
title: Connection Details for Availability Group
last_updated: July 29, 2016
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Monitor a SQL Server Availability Group by supplying the following connection details to Spotlight."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_connect_details.html
folder: ConnectAvailabilityGroup
---




{% include tip.html content="The Availability Groups connection type requires SQL Server 2012 or above." %}

## How to enter / edit connection details

 Use a Spotlight Client to enter / edit connection details.

 From the Spotlight Client

 1.  Click **Configure \| Connections**.
 2.  Double click **Add new connection**.
 3.  Fill in the connection details.

## Connection details

### Address

Specify the Availability Listener: IP address, hostname, or URL.

### Authentication

Specify the authentication for Spotlight to use to connect to the Availability Listener.

Select **Windows Authentication (using Diagnostic Server credentials)** to use the Windows user configured to run the Spotlight Diagnostic Server.

Alternatively, fill in the **User** and **Password** fields. Ensure the account has sufficient privileges to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the listener allows this.

## Test the connection
On entering / modifying connection details in the Spotlight Client, click **Test** to test the connection.


{% include links.html %}
