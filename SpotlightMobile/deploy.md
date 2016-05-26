---
title: Setup Spotlight Mobile
tags: [setup]
keywords: deploy, setup, mobile
summary: "Expand your deployment of of Spotlight Enterprise to include Spotlight Mobile."
sidebar: p_mobile_sidebar
permalink: /mobile_deploy/
---



## Get Spotlight Cloud credentials
Data collected from monitored connections is sent to Spotlight Mobile via the Spotlight Cloud.

A Spotlight Cloud account is required to use Spotlight Mobile. Create a Spotlight Cloud account if you do not already have one. Do this at the Spotlight web site.

{% include tip.html content="If there are many Spotlight Cloud accounts in your organization, see also Spotlight Cloud \| Organizations." %}

## Configure the Spotlight Diagnostic Server

For Spotlight Mobile to receive data from the Spotlight Diagnostic Server, ensure the Spotlight Cloud account configured to the Spotlight Diagnostic Server is your Spotlight Cloud account or the Spotlight Cloud account of an individual in the same organization as you (Spotlight Cloud \| Organizations).

Use a Spotlight Client:

1. Verify the Spotlight Client is connected to the appropriate Spotlight Diagnostic Server.
2. Click Configure \| Spotlight Cloud.

![Configure Spotlight Cloud]({{ "/imagesMobile/tb_config_spotlighcloud.png" | prepend: site.baseurl }})

3. Select the option to Upload data to Spotlight Cloud

For Spotlight prior to 11.6, select the option to Upload mobile monitoring data to Spotlight Essentials.

4. Ensure the Spotlight Cloud account configured to this Spotlight Diagnostic Server is your Spotlight Cloud account or the Spotlight Cloud account of an individual in the same organization as you (Spotlight Cloud \| Organizations).

Click Register Now to create a Spotlight Cloud account if you do not already have one.

{% include important.html content="The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. If you used Spotlight Mobile with Spotlight 11.0 or earlier the Spotlight Web Publisher was installed to work with your Spotlight Diagnostic Server. To continue using Spotlight Mobile you must uninstall the Spotlight Web Publisher. Use Windows | Control Panel | Programs and Features. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server." %}


## Download and install Spotlight Mobile

See https://www.spotlightessentials.com/spotlight/mobile-monitoring.

During installation, you may be given the opportunity to decline to receive push notifications from Spotlight. For information see Push notifications.

Sign in to the Spotlight Mobile app with your Spotlight Cloud account. If you have many Spotlight Cloud accounts then each can be added to Spotlight Mobile.


## Spotlight Enterprise components and Spotlight Mobile

A minimal Spotlight on SQL Server deployment consists of a Spotlight Client (to customize Spotlight and view data from monitored systems), a Spotlight Diagnostic Server (to collect data from monitored systems) and a Playback Database (to store recent history). These components are installed with Spotlight on SQL Server.

### Spotlight Client

A Spotlight Client is used to configure Spotlight. For example, a Spotlight Client is used to add and remove the connections monitored through Spotlight. This cannot be done in Spotlight Mobile.

### Spotlight Diagnostic Server

The Spotlight Diagnostic Server collects data from monitored systems. A prerequisite to using Spotlight Mobile is

* The Spotlight Diagnostic Server is configured to upload data to the Spotlight Cloud.
* The Spotlight Diagnostic Server has access to the Internet.
* Port TCP 443 on the Spotlight Diagnostic Server is open.

### Spotlight Playback Database

Recent history is stored in the Playback Database. The Playback Database is deployed on SQL Server. Each Spotlight Diagnostic Server requires its own Playback Database. A Spotlight Client is used to configure the Spotlight Playback Database.

### Spotlight Statistics Repository

Long term history for reporting and trending is stored in the Spotlight Statistics Repository. The Spotlight Statistics Repository is inaccessible to Spotlight Mobile.

### Spotlight Cloud

Spotlight Cloud Health Performance data is uploaded to the Spotlight web site. This data is accessible only from the Spotlight web site.
