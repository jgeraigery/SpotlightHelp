---
title: Connection Details for Windows server
last_updated: July 29, 2016
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Monitor a Windows server (Windows hosts of your database connections) by supplying the following connection details to Spotlight."
sidebar: c_windows_sidebar
permalink: windows_connect_details.html
folder: ConnectWindows
---




## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details.

{% include tip.html content="Spotlight can add Windows Server via discovery or by importing details from a file. See the [Connection Discovery Wizard][enterprise_cfgmonitor_connect_discoverywizard]." %}

## Connection details

### Address

Specify the IP address, hostname, or URL of the Windows Server.

If the Windows Server is in a different domain to the Spotlight Diagnostic Server host then specify the address as a fully qualified address (for example, machine1.domain.company.corp). The connection may work intermittently if the address is not fully qualified.

{% include note.html content="Spotlight can only connect to Windows servers in a domain. Spotlight cannot connect to Windows servers in a workgroup. Spotlight cannot connect to databases hosted on Windows servers in a workgroup." %}

### Authentication

Specify the authentication for Spotlight to use to connect to the Windows server and retrieve performance data.

Select **Use Diagnostic Server credentials** to use the Windows user configured to run the Spotlight Diagnostic Server. You are required to select this option for the Windows Server that hosts the Spotlight Diagnostic Server. If you select this option and the Windows Server is remote from the Spotlight Diagnostic Server then ensure the Windows user running the Spotlight Diagnostic Server can access the Windows Server. (By default the Spotlight Diagnostic Server runs under the "Local System" account, which will not have privileges on a remote Windows Server). If you select this option and the Windows Server is in a different domain from the Spotlight Diagnostic Server then ensure the domain the Windows Server is in trusts the domain of the user running the Spotlight Diagnostic Server.

Alternatively, fill in the **User** and **Password** fields. Include the Windows domain in the user name. For example, “domain\johnsmith”, instead of “johnsmith”. The account must have the privileges required to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the Windows server allows this. If this is not feasible in your environment then the following instructions are provided: [How to configure WMI with minimum required user permissions][windows_connect_wmiminimumpermissions].


### Virtualization details

#### Connection

If the Windows server is hosted by a virtual server then select the name of the virtual server.

Click **Create** to add a virtual server to the list. Select from:

* [VMware \| Connection Details][vmware_connect_details]
* [Hyper-V \| Connection Details][hyperv_connect_details]


#### VM Name
Select the name of the virtual machine from those hosted by the virtual server.



## Test the connection
On entering / modifying connection details in the Spotlight Client, click **Test** to test the connection.


## Troubleshooting

* Verify that Spotlight has the correct address of the Windows server and appropriate authentication as documented above.
* Verify the Windows Server fulfills the [requirements][windows_connect_requirements] of Spotlight.
* Verify TCP Port 135 is open on the Windows server.
* Verify the Windows server is in a domain. Spotlight cannot connect to Windows servers in a workgroup.
* Verify WMI is working and returns data prroperly. The Spotlight Diagnostic Server uses WMI queries to retrieve performance counter information from the Windows Server. See [Troubleshooting WMI][enterprise_backend_wmitroubleshooting].
* Check the [Spotlight Enterprise Release Notes][enterprise_releasenotes] for known issues.


{% include links.html %}
