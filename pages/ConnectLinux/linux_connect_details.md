---
title: Connection Details for Linux server
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Specify the connection details for a Linux server."
sidebar: c_linux_sidebar
permalink: linux_connect_details.html
folder: ConnectLinux
---


## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details as follows.
4.  Click **Test** to test the connection.


## Address
Enter the hostname or IP address to the Linux machine.

## User
Enter the user name to login to the Unix machine.

{% include note.html content="The **root** user is not allowed. Remote login as **root** has been disallowed for security reasons." %}

## Password
Enter the password to login to the Unix machine.

## Port Number
Enter the port number for SSH (secure shell) connection to the Unix machine. The default value is 22


## Virtualization details

### Connection

If the Linux server is hosted by a virtual server then select the name of the virtual server.

Click **Create** to add a virtual server to the list. Select from:

* [VMware \| Connection Details][vmware_connect_details]
* [Hyper-V \| Connection Details][hyperv_connect_details]


### VM Name
Select the name of the virtual machine from those hosted by the virtual server.


{% include links.html %}
