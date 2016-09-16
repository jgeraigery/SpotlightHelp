---
title: Command Line Access
summary: "List / edit / delete Spotlight Connections from the command line."
sidebar: p_enterprise_sidebar
permalink: enterprise_connect_commandlineaccess.html
folder: SpotlightEnterprise
---



1. Access Spotlight from the command line
1.Open the Spotlight Client installation directory (usually C:\Program Files (x86)\Dell\Spotlight on SQL Server)
2.Open the Console directory in the Spotlight Client installation directory.
3.Right click the file ds-cli.cmd and select Open to open the command prompt.

2. Command Spotlight from the command line
•Basic commands
•Command line parameters
•Add a list of connections
•Remove many connections

Table 9: Basic commands






Request

Command





List Spotlight connections


Get-Connection




Delete a Spotlight connection

See also Remove many connections.


Remove-Connection -Name connectionName -PassThru




Add a Spotlight connection

Windows authentication (using Diagnostic Server credentials)

See also Add a list of connections.


Add-Connection -Address address -Technology connectionType -Enabled -PassThru




Add a Spotlight connection

Supply User / Password details as per the connection type

See also Add a list of connections.


Add-Connection -Credential $(get-credential) -Address address -Technology connectionType -Enabled -PassThru




Change the authentication used to monitor a Spotlight connection

Supply User / Password details as per the connection type


Get-Connection -Name connectionName | Set-Connection -Credential $(get-credential)




Change the authentication used to monitor a Spotlight connection

 Change to Windows authentication (using Diagnostic Server credentials)


Get-Connection -Name connectionName | Set-Connection -UseDSAuth




Disable monitoring a Spotlight connection


Get-Connection -Name connectionName | Set-Connection -Disabled




Re-enable monitoring a Spotlight connection


Get-Connection -Name connectionName | Set-Connection -Enabled


Table 10: Command line parameters






Parameter

Description





-Name connectionName


Supply the name of the connection.










Note: The connection name is not user-assignable. When executing Add-Connection from the command line, the connection name will take the form of the address followed by the connection type, as in address_connectionType

Connection names are not case sensitive.













TIP: A list of connection names can be summarized by wildcards * and ? as per prefix* or *infix* or on?char.





-Address address


Supply the address of the Spotlight connection as per the form of the address entered in the Spotlight Client | Configure Connections | Properties | Details | Address field. For example: the Server Name, Server Instance Name, or IP address.




-Technology connectionType


Supply the connection type in Internet MIME format. For example: os/windows, os/vmware. More free form forms are accepted such as windows, vmware, hyperv, sqlserver, sqlazure, analysisservices, replication and availabilitygroups.




-Credential $(get-credential)


Use the -Credential parameter to specify User / Password details as per the connection type. For Add-Connection, where the -Credential parameter is not specified, Windows authentication (using Diagnostic Server credentials) is assumed.

The -Credential parameter requires a PSCredential object, which is a PowerShell built-in object.

It can be used via a temporary variable (preferrable if you want to add many connections) as per:


$c = $(get-credential)

Add-Connection -Credential $c -Technology sqlserver -Address my.host.name\instance -Enable

It can be used inline as per:


Add-Connection -Credential $(get-credential) -Technology sqlserver -Address my.host.name\instance -Enable




-Enabled


Enable Spotlight monitoring on this connection.




-Disabled


Disable Spotlight monitoring on this connection.


Table 11: Add a list of connections






Request

Command





Add a list of connections where all connections are of the same technology / connection type. Separate each address with a comma. Supply one technology type.


Add-Connection -Address address1,address2,address3 -Technology connectionType -Enabled -PassThru




Add a list of connections where there are varying connection types. Separate each address with a comma. Provide a list of technology types where the first address corresponds to the first technology type, the second address corresponds to the second technology type etc.


Add-Connection -Address address1,address2,address3 -Technology connectionType1,connectionType2,connectionType3 -Enabled -PassThru


Table 12: Remove many connections






Request

Command





Remove all connections


Remove-Connection -Name *




Remove all connections of a specific type (technology)


Remove-Connection -Technology connectionType

For example to remove all connections where the connection type is SQL Server:

Remove-Connection -Technology sqlserver




Remove a list of connections. Type the name of each connection. Separate each connection name with a comma.


Remove-Connection -Name connectionName1,connectionName2,connectionName3




Remove a list of connections where the connection names form a pattern.


Remove-Connection -Name connectionName*

For example to remove all connections where the name begins with the characters "address":

Remove-Connection -Name address*



{% include links.html %}
