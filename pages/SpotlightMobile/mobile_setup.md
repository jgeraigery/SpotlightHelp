---
title: Setup Spotlight Mobile
summary: "Use Spotlight Mobile to monitor your Spotlight Enterprise, Spotlight on SQL Server or Spotlight on Oracle connections remotely via your mobile device."
sidebar: p_mobile_sidebar
permalink: mobile_setup.html
folder: SpotlightMobile
---



## Get Quest credentials
Data collected from monitored connections is sent to Spotlight Mobile via the Spotlight Cloud.

A Quest account is required to use Spotlight Mobile. Create a Quest account if you do not already have one. Do this at the [Spotlight web site](https://www.spotlightessentials.com).

## Configure the Spotlight Diagnostic Server

For Spotlight Mobile to receive data from the Spotlight Diagnostic Server, ensure the Quest account configured to the Spotlight Diagnostic Server is your Quest account or the Quest account of an individual in the same Spotlight Organization as you.

In a Spotlight Enterprise deployment, use a Spotlight Client to [configure uploading to the Spotlight Cloud][enterprise_cfgds_spotlightcloud].

{% include important.html content="The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. If you used Spotlight Mobile with Spotlight on SQL Server 11.0 or earlier the Spotlight Web Publisher was installed to work with your Spotlight Diagnostic Server. To continue using Spotlight Mobile you must uninstall the Spotlight Web Publisher. Use Windows | Control Panel | Programs and Features. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server." %}


## Download and install Spotlight Mobile

See https://www.spotlightessentials.com/spotlight/mobile-monitoring.

During installation, you may be given the opportunity to decline to receive push notifications from Spotlight Enterprise. See [Push notifications][mobile_alarm_notifications].

Sign in to the Spotlight Mobile app with your Quest account. If you have many Quest accounts then each can be added to Spotlight Mobile.



{% include links.html %}
