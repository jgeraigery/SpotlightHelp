---
title: Setup Spotlight Mobile
summary: "Use Spotlight Mobile to monitor your Spotlight Enterprise, Spotlight on SQL Server or Spotlight on Oracle connections remotely via your mobile device."
sidebar: p_mobile_sidebar
permalink: mobile_setup.html
folder: SpotlightMobile
---



## Get Spotlight Cloud credentials
Data collected from monitored connections is sent to Spotlight Mobile via the Spotlight Cloud.

A Spotlight Cloud account is required to use Spotlight Mobile. Create a Spotlight Cloud account if you do not already have one. Do this at the [Spotlight web site](https://www.spotlightessentials.com/home/SignUp).

{% include tip.html content="If there are many Spotlight Cloud accounts in your organization, see also [Spotlight Cloud \| Organizations][cloud_settings_organizations]." %}

## Configure the Spotlight Diagnostic Server

For Spotlight Mobile to receive data from the Spotlight Diagnostic Server, ensure the Spotlight Cloud account configured to the Spotlight Diagnostic Server is your Spotlight Cloud account or the Spotlight Cloud account of an individual in the same Spotlight Cloud Organization as you.

In a Spotlight Enterprise deployment, use a Spotlight Client to [configure uploading to the Spotliht Cloud][enterprise_cfgds_spotlightcloud].

{% include important.html content="The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. If you used Spotlight Mobile with Spotlight on SQL Server 11.0 or earlier the Spotlight Web Publisher was installed to work with your Spotlight Diagnostic Server. To continue using Spotlight Mobile you must uninstall the Spotlight Web Publisher. Use Windows | Control Panel | Programs and Features. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server." %}


## Download and install Spotlight Mobile

See https://www.spotlightessentials.com/spotlight/mobile-monitoring.

During installation, you may be given the opportunity to decline to receive push notifications from Spotlight Enterprise. See [Push notifications][mobile_alarm_notifications].

Sign in to the Spotlight Mobile app with your Spotlight Cloud account. If you have many Spotlight Cloud accounts then each can be added to Spotlight Mobile.



{% include links.html %}
