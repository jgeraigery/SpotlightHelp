---
title: TLS 1.2 only environments
keywords: TLS
summary: "The following is applicable to you if your Windows environment is TLS 1.2 only."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_windows_tls12.html
folder: SpotlightEnterprise
---



## Requirements for a TLS 1.2 only environment

If your Windows environment is TLS 1.2 only then in your deployment of Spotlight Enterprise ensure the following is true for all Spotlight Clients, Spotlight Diagnostic Server, monitored operating systems, monitored SQL Server instances and .Net.

{% include tip.html content="In general every Windows version after and including Windows Server 2012 R2 or Windows 8.1  and SQL Server version after and including SQL Server 2014 Service Pack 1 include TLS 1.2 support by default. For older versions, consult the Microsoft table  [https://support.microsoft.com/en-us/help/3135244/tls-1.2-support-for-microsoft-sql-server](https://support.microsoft.com/en-us/help/3135244/tls-1.2-support-for-microsoft-sql-server)." %}

{% include tip.html content="Some SQL Server components use .NET 3.5 so you need to update that as well." %}

### Ensure the most recent service packs are installed for both the Windows operating system and SQL Server


### Ensure all monitored SQL Server versions and their hosts support TLS 1.2.

Install all matching updates from Microsoft:

* [https://support.microsoft.com/en-us/help/3135244/tls-1.2-support-for-microsoft-sql-server](https://support.microsoft.com/en-us/help/3135244/tls-1.2-support-for-microsoft-sql-server)
* [https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1.1-and-tls-1.2-as-a-default-secure-protocols-in-winhttp-in-windows](https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1.1-and-tls-1.2-as-a-default-secure-protocols-in-winhttp-in-windows)


### Ensure the ODBC Driver 13 for SQL Server is installed on all Spotlight Clients
Install ODBC Driver 13 if necessary.


## Errors you might encounter if these requirements are not met

You may encounter connection errors like this from the Spotlight Client:

{% include inline_imageClient.html file="pane_windows_errortls12only.png" alt="Windows pane" %}

While monitoring a SQL Server connection you may see a similar message on the **Monitored Server - SQL Server Connection Failure alarm** where the collector has failed to connect to the SQL Server instance.



{% include links.html %}
