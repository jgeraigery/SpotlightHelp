---
title: Spotlight services requiring Internet access
summary: "The following Spotlight services require Internet access on the Spotlight Diagnostic Server. Use this page to ensure the Spotlight Diagnostic Server is appropriately configured."
sidebar: p_enterprise_sidebar
permalink: enterprise_ds_internetaccess.html
folder: SpotlightEnterprise
---



### Configure the auto-update facility

Enable Auto Update so the Spotlight Diagnostic Server will receive minor updates (scripts and configuration) automatically.

### Configure uploading to Spotlight Cloud

Monitor Spotlight connections in a web browser or Spotlight Mobile. Upload performance data for health check analysis.


## Windows Control Panel | Internet Options | Connections

On the computer hosting the Spotlight Diagnostic Server:

1. Open the Control Panel | Internet Options.
2. Select the Connections tab.
3. Click LAN Settings.
4. Ensure the settings on this screen are appropriate to the settings of your local environment.










Note: After the Spotlight Diagnostic Server is installed, restart the Spotlight Diagnostic Server after changes are made. For instructions see Start and stop the Spotlight Diagnostic Server.




## Windows Control Panel | Internet Options | Advanced


On the computer hosting the Spotlight Diagnostic Server:

1. Open the Control Panel | Internet Options.
2. Select the Advanced tab.
3. Ensure Use HTTP 1.1 and Use HTTP 1.1 through proxy connections are selected.












Note: After the Spotlight Diagnostic Server is installed, restart the Spotlight Diagnostic Server after changes are made. For instructions see Start and stop the Spotlight Diagnostic Server.




## Internet URLs - Auto Update

An outgoing HTTPS connection to the following URL is used to retrieve updates.

https://spotlight.blob.core.windows.net

Enabling of Auto-update does not open a port that allows incoming connections.



## Internet URLs - Spotlight Cloud

Spotlight Cloud requires incoming and outgoing HTTPS connections to the following URLs. To verify access to the Spotlight Cloud, open a web browser on the Spotlight Diagnostic Server host and look up these URLs.






URL

Web browser lookup




https://www.spotlightessentials.com

Successful display of the Spotlight web site confirms HTTPS port 443 is open.



https://api.spotlightessentials.com

Successful display of the text “Welcome to Spotlight Web API!” confirms access for uploading.


{% include links.html %}
