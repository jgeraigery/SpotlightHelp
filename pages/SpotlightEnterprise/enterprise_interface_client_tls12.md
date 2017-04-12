---
title: TLS 1.2 only environments
summary: "The following is applicable to you if your Windows environment is TLS 1.2 only and you encounter connection errors like this from the Spotlight Client."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_client_tls12.html
folder: SpotlightEnterprise
---


The following is applicable to you if you encounter connection errors like this from the Spotlight Client:

{% include inline_imageClient.html file="pane_windows_errortls12only.png" alt="Windows pane" %}



## Ensure the most recent service packs are installed for both the Windows operating system and SQL Server


## Ensure the monitored SQL Server versions support TLS 1.2. Update if necessary.

Install all  matching updates from:

* [https://support.microsoft.com/en-us/help/3135244/tls-1.2-support-for-microsoft-sql-server](https://support.microsoft.com/en-us/help/3135244/tls-1.2-support-for-microsoft-sql-server)
* [https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1.1-and-tls-1.2-as-a-default-secure-protocols-in-winhttp-in-windows](https://support.microsoft.com/en-us/help/3140245/update-to-enable-tls-1.1-and-tls-1.2-as-a-default-secure-protocols-in-winhttp-in-windows)


## Ensure the ODBC Driver 13 for SQL Server is installed
Install ODBC Driver 13 for monitored SQL Server if necessary.






{% include links.html %}
