---
title: Connection Discovery Wizard
tags: [connection_details]
summary: "The Connection Discovery Wizard is used to locate resources on the network to add as Spotlight connections. The Connection Discovery Wizard can be used to locate SQL Server instances or Windows Servers."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_discoverywizard.html
folder: SpotlightEnterprise
---



## Open the Connection Discovery Wizard in the Spotlight Client

1. Click **Configure \| Connections**.
2. Click **Discover** from the list of **All connections**, **SQL Server** or **Windows**.
3. If prompted, select the **SQL Server** or **Windows** connection type.

## Add multiple connections via discovery or file import

### Discover from the network

When selected, Spotlight compiles a list of resources on the network. From this list, you select the resources to monitor.

Depending on the size of your network it may take some time for Spotlight to discover all the available resources.

{% include tip.html content="To locate SQL Server instances, Spotlight requires SQL Server Client tools be installed on both the Spotlight Client and Spotlight Diagnostic Server. If Spotlight finds no SQL Server instances then verify SQL Server Client Tools are installed. The SQL Server Client Tools that you need can be found on the installation disk for Microsoft SQL Server 2000 or later." %}

### Import from a file

When selected, Spotlight uses a file to locate SQL Server or Windows Server on your network. Setup the file beforehand as per the following instructions. Click **Browse** to locate the file.


## Setup your import file to locate SQL Server instances on your network

On each line of the file, detail an existing SQL Server instance on your network. The format of the line is dependent on the authentication used to connect to the SQL Server instance and your use of connection tags.

```
ConnectionString
```

Connect to this SQL Server instance with Windows authentication. The credentials of the Windows user configured to run the Spotlight Diagnostic Server are used.

```
ConnectionString,User,Password
```

Connect to this SQL Server instance with database user and password. Specify the database user and password.

```
ConnectionString,,,#Tag
```

Connect to this SQL Server instance with Windows authentication. The credentials of the Windows user configured to run the Spotlight Diagnostic Server are used. Assign one or more connection tags to the instance. Add multiple tags to the line by separating each tag with a comma.

```
ConnectionString,User,Password,#Tag
```

Connect to this SQL Server instance with the database user and password. Assign one or more connection tags to the instance. Add multiple tags to the line by separating each tag with a comma.


### More information on the connection string and connection tags follows.

#### ConnectionString

The connection string (Server name, Instance name or IP address).

Optionally, enclose the server name in double quotes, as in "Server Name".

Double quotes are required if including the port number, as in "ServerName,PortNumber".

Optionally include the instance name in the address, as in "ServerName\InstanceName" or "ServerName\InstanceName,PortNumber".

#### #Tag


Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection.

Example tag names could be:
* #Country.USA
* #APP.Finance
* #APP.HR

For more information, see [Connection Properties \| Tags][enterprise_cfgmonitor_connect_tags].

{% include tip.html content="If you re-import the same file with updated tags, Spotlight will skip the connection creation step but update the tags for the connection." %}

## Setup your import file to locate Windows Server on your network

On each line of the file, detail an existing Windows Server on your network. The format of the line is dependent on the authentication used to connect to the Windows Server instance and your use of connection tags.


```
ConnectionString
```

Log in to this Windows Server using the credentials of the Windows user configured to run the Spotlight Diagnostic Server.

```
ConnectionString,User,Password
```

Log in to this Windows Server using the given user and password.

```
ConnectionString,,,#Tag
```

Log in to this Windows Server using the credentials of the Windows user configured to run the Spotlight Diagnostic Server. Assign one or more connection tags. Add multiple tags to the line by separating each tag with a comma.

```
ConnectionString,User,Password,#Tag
```

Log in to this Windows Server using the given user and password. Assign one or more connection tags. Add multiple tags to the line by separating each tag with a comma.


### More information on the connection string, user details and connection tags follows.

#### ConnectionString

The IP address, hostname, or URL of the Windows Server.

If the Windows Server is in a different domain to the Spotlight Diagnostic Server host then specify the address as a fully qualified address (for example, machine1.domain.company.corp).

Optionally, enclose the address in double quotes, as in "Address".

#### User / Password

When specifying the user details, include the Windows Domain in the user name. For example, “domain\johnsmith”, instead of “johnsmith”.

#### #Tag

Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection.

Example tag names could be:
* #Country.USA
* #Country.AU

For more information, see [Connection Properties \| Tags][enterprise_cfgmonitor_connect_tags].

{% include tip.html content="If you re-import the same file with updated tags, Spotlight will skip the connection creation step but update the tags for the connection." %}

{% include note.html content="If a field in the file contains a comma, use \"\" to quote the value (as per CSV notation)." %}


## Limitations

Consider a deployment of more than one Spotlight Diagnostic Server. A single Spotlight Diagnostic Server is designed to monitor a maximum of 100 SQL Servers, Analysis Services or Replication instances and 100 Windows servers. Exceeding this recommended limit on 32 bit environments may result in poor performance or product instability, due to the 1 Gb memory limit. On 64 bit environments theoretically more connections can be monitored as the 1 Gb limit no longer applies, however testing of this has been limited.


{% include links.html %}
