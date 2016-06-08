---
title: Connection details and requirements
summary: "An availability group is a set of user databases that fail over together. An availability group consists of a primary availability replica and one to four secondary replicas that are maintained through SQL Server log-based data movement for data protection without the need for shared storage. Each replica is hosted by an instance of SQL Server on a different node of the Windows Server Failover Cluster (WSFC). The availability group and a corresponding virtual network name are registered as resources in the WSFC."
sidebar: c_availabilitygroup_sidebar
permalink: /availabilitygroup_connect_details/
---


 {% include tip.html content="The Availability Groups connection type requires SQL Server 2012 or above." %}


## Specify the connection details for the Availability Group

# Address

The Availability Listener: IP address, hostname, or URL.

# Authentication

The authentication for Spotlight to use to connect to the Availability Listener.

Select Windows Authentication (using Diagnostic Server credentials) to use the Windows user configured to run the Spotlight Diagnostic Server.

Alternatively, fill in the User and Password fields. Ensure the account has sufficient privileges to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the listener allows this.