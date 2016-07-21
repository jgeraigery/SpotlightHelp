---
title: Troubleshooting
summary: "The Spotlight Diagnostic Server uses WMI queries to retrieve performance counter information from monitored Windows Servers and Windows hosts of database connections. This data is then displayed in real time on a Spotlight Client or other Spotlight viewer."
sidebar: c_windows_sidebar
permalink: windows_connection_troubleshooting.html
folder: ConnectWindows
---



## Connection Details

Use a Spotlight Client to create a connection from the Spotlight Diagnostic Server to the Windows Server (host of the database connection).

If the Windows Server is in a different domain to the Spotlight Diagnostic Server host then ensure the address provided is fully qualified (for example, machine1.domain.company.corp). The connection may work intermittently if the address is not fully qualified.

## Windows Domains

Spotlight can only connect to Windows servers in a domain. Spotlight cannot connect to Windows servers in a workgroup. Spotlight cannot connect to databases hosted on Windows servers in a workgroup.

## Windows Account Permissions

 Spotlight requires authentication to connect to the Windows server and retrieve performance data. There are two ways to do this at Windows Server \| Connection Details: use Diagnostic Server credentials or fill in the user and password fields.

When Use Diagnostic Server credentials is selected, Spotlight uses the Windows user configured to run the Spotlight Diagnostic Server. Selecting this option is required to connect to the Windows Server that hosts the Spotlight Diagnostic Server. If you select this option and the Windows Server is remote from the Spotlight Diagnostic Server then ensure the Windows user running the Spotlight Diagnostic Server can access the Windows Server. (By default the Spotlight Diagnostic Server runs under the "Local System" account, which will not have privileges on a remote Windows Server). If you select this option and the Windows Server is in a different domain from the Spotlight Diagnostic Server then ensure the domain the Windows Server is in trusts the domain of the user running the Spotlight Diagnostic Server.

Alternatively, fill in the User and Password fields. Include the Windows domain in the user name. For example, “domain\johnsmith”, instead of “johnsmith”. The account must have the privileges required to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the Windows server allows this. Alternatively an account can be configured with the necessary privileges as per How to configure WMI with minimum required user permissions.

## Troubleshooting WMI

The Spotlight Diagnostic Server uses WMI queries to retrieve performance counter information from the Windows Server. If there are problems, you may want to verify WMI is working and returns data properly.

Verify TCP port 135 is open on the Windows server.

## Troubleshooting

Check the System Requirements and Known Issues sections of the Spotlight on SQL Server Release Notes.








{% include note.html content="Spotlight Playback is fully documented in the Spotlight Enterprise help." %}

{% include links.html %}
