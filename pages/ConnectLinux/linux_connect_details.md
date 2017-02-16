---
title: Connection Details for Unix server
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Specify the connection details for a Unix server or Unix host of a database connection."
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

Note: The root user is not allowed. Remote login as "root" has been disallowed for security reasons.

## Password
Enter the password to login to the Unix machine.

Note: Not applicable when Use SSH Public / Private Keys is selected. Applicable when Save password details (for this connection) is selected.

## Connection Type
Select according to the Unix system's configuration. The options are: REXEC and SSH. See Configure the Unix System for more information.

## Port Number
Enter the port number for SSH (secure shell) connection to the Unix machine. The default value is 22
Note: Applicable when the Connection Type is SSH.


## SSH Key Authentication

Applicable when the Connection Type is SSH.

### Use SSH Public / Private Keys
Select according to the Unix machine's configuration.

### SSH Key Type
Choose the type of key to use when making the Spotlight connection: RSA® or DSA. See Configure the Unix System for more information.

### SSH Private key Filename
Locate the file that contains the private key for the Spotlight connection.

Either click
or type the filename and location.

### SSH Passphrase
Type the passphrase used to decrypt the private key.

Note: Applicable when Save password details (for this connection) is selected.




 {% include links.html %}
