---
title: Setup Spotlight Mobile
tags: [setup]
keywords: deploy, setup, mobile
summary: "Expand your deployment of Spotlight Enterprise to include Spotlight Mobile."
sidebar: p_mobile_sidebar
permalink: mobile_deploy.html
folder: SpotlightMobile
---



## Get Spotlight Cloud credentials
Data collected from monitored connections is sent to Spotlight Mobile via the Spotlight Cloud.

A Spotlight Cloud account is required to use Spotlight Mobile. Create a Spotlight Cloud account if you do not already have one. Do this at the Spotlight web site.

{% include tip.html content="If there are many Spotlight Cloud accounts in your organization, see also Spotlight Cloud \| Organizations." %}

## Configure the Spotlight Diagnostic Server

For Spotlight Mobile to receive data from the Spotlight Diagnostic Server, ensure the Spotlight Cloud account configured to the Spotlight Diagnostic Server is your Spotlight Cloud account or the Spotlight Cloud account of an individual in the same organization as you (Spotlight Cloud \| Organizations).

Use a Spotlight Client:

1. If you use more than one Spotlight Diagnostic Server, verify the Spotlight Client is connected to the appropriate Spotlight Diagnostic Server.
2. Click **Configure \| Spotlight Cloud**.

    {% include inline_imageClient.html file="tb_config_spotlighcloud.png" alt="Configure Spotlight Cloud" %}

3. Select the option to **Upload data to Spotlight Cloud**.

   For Spotlight on SQL Server prior to 11.6, select the option to **Upload mobile monitoring data to Spotlight Essentials**.

4. Ensure the Spotlight Cloud account configured to this Spotlight Diagnostic Server is your Spotlight Cloud account or the Spotlight Cloud account of an individual in the same organization as you (Spotlight Cloud \| Organizations).

Click **Register Now** to create a Spotlight Cloud account if you do not already have one.

{% include important.html content="The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. If you used Spotlight Mobile with Spotlight on SQL Server 11.0 or earlier the Spotlight Web Publisher was installed to work with your Spotlight Diagnostic Server. To continue using Spotlight Mobile you must uninstall the Spotlight Web Publisher. Use Windows | Control Panel | Programs and Features. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server." %}


## Download and install Spotlight Mobile

See https://www.spotlightessentials.com/spotlight/mobile-monitoring.

During installation, you may be given the opportunity to decline to receive push notifications from Spotlight Enterprise. See [Push notifications][mobile_alarm_notifications].

Sign in to the Spotlight Mobile app with your Spotlight Cloud account. If you have many Spotlight Cloud accounts then each can be added to Spotlight Mobile.



{% include links.html %}
