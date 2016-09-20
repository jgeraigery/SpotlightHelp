---
title: Windows Server connection details
last_updated: July 29, 2016
tags: [connection_details]
summary: "Specify the connection details for the Windows Server and Windows host of database connections."
sidebar: c_windows_sidebar
permalink: windows_connection_details.html
folder: ConnectWindows
---



{% include note.html content="Spotlight can add Windows Server via discovery or by importing details from a file. See the Connection Discovery Wizard." %}


## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details as follows.
4.  Click **Test** to test the connection.

## Address

The IP address, hostname, or URL of the Windows Server.

If the Windows Server is in a different domain to the Spotlight Diagnostic Server host then specify the address as a fully qualified address (for example, machine1.domain.company.corp). The connection may work intermittently if the address is not fully qualified.

Spotlight can only connect to Windows servers in a domain. Spotlight cannot connect to Windows servers in a workgroup. Spotlight cannot connect to databases hosted on Windows servers in a workgroup.


## Authentication

The authentication for Spotlight to use to connect to the Windows server.

Select **Use Diagnostic Server credentials** to use the Windows user configured to run the Spotlight Diagnostic Server. You are required to select this option for the Windows Server that hosts the Spotlight Diagnostic Server. If you select this option and the Windows Server is remote from the Spotlight Diagnostic Server then ensure the Windows user running the Spotlight Diagnostic Server can access the Windows Server. (By default the Spotlight Diagnostic Server runs under the "Local System" account, which will not have privileges on a remote Windows Server). If you select this option and the Windows Server is in a different domain from the Spotlight Diagnostic Server then ensure the domain the Windows Server is in trusts the domain of the user running the Spotlight Diagnostic Server.

Alternatively, fill in the **User** and **Password** fields. Include the Windows domain in the user name. For example, “domain\johnsmith”, instead of “johnsmith”. The account must have the privileges required to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the Windows server allows this. Alternatively an account can be configured with the necessary privileges as per How to configure WMI with minimum required user permissions.

## Virtualization details

### Connection

If this Windows server is hosted by a virtual server then select the name of the virtual server.

Click **Create** to add a virtual server to the list. Select from:

* VMware \| Connection Details
* Hyper-V \| Connection Details


### VM Name
Select the name of the virtual machine from those hosted by the virtual server.





{% include links.html %}
