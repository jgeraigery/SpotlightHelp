---
title: Configure uploading to the Spotlight Cloud
summary: "Enable functionality to monitor Spotlight connections from the Spotlight web site or Spotlight Mobile. Upload performance data for health check analysis."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_spotlightcloud.html
id: 706
folder: SpotlightEnterprise
---



## Open this screen from the Spotlight Client

Click **Configure \| Spotlight Cloud**.


## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured for Spotlight Cloud.

## Upload data to Spotlight Cloud

Select **Upload data to Spotlight Cloud** to enable functionality to monitor Spotlight connections from the Spotlight web site or Spotlight Mobile. Upload performance data for health check analysis.

If you clear **Upload data to Spotlight Cloud** then Spotlight Cloud services are disabled for this Spotlight Diagnostic Server. Spotlight connections cannot be monitored from the Spotlight web site or Spotlight Mobile. Performance data for health check analysis is not uploaded to the Spotlight Cloud.

## Spotlight Cloud services account details

Enter Spotlight Cloud (Spotlight Essentials) account details (**Email** or **Username**, **Password**). This section must be filled in when uploading of data to the Spotlight Cloud is enabled. Once filled in, the email (or username) signed in under is provided.

Click [Register Now](https://www.spotlightessentials.com/home/signup) to create a Spotlight Cloud account if you do not already have one. Registration is free.


## Additional references

[Spotlight Cloud Services](https://www.spotlightessentials.com/) | The Spotlight web site.
[Spotlight Mobile](https://www.spotlightessentials.com/spotlight/mobile-monitoring) | Download, setup and install Spotlight Mobile.
[Register now](https://www.spotlightessentials.com/home/signup) | Register for a Spotlight Cloud Services account
[Spotlight terms of service](https://www.spotlightessentials.com/static/terms) | Spotlight Services Agreement

## Upgrades from Spotlight on SQL Server 11.0 or earlier and Spotlight Mobile

If you used Spotlight to monitor your SQL Server connections on a mobile device in the past (Spotlight on SQL Server 11.0 or earlier) then you must uninstall the Spotlight Web Publisher via Windows \| Control Panel \| Programs and Features. The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. It is now important that you uninstall it. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server.


{% include links.html %}
