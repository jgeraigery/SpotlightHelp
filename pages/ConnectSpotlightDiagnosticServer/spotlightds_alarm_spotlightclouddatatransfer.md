---
title: ﻿Diagnostic Server - Spotlight Cloud Data Transfer alarm
tags: [spotlightds_alarms]
last_updated: July 29, 2016
summary: "The Diagnostic Server - Spotlight Cloud data transfer alarm is raised when the transfer of data to Spotlight Cloud services (including the Spotlight web site and Spotlight Mobile) is not successful."
sidebar: c_spotlightds_sidebar
permalink: spotlightds_alarm_spotlightclouddatatransfer.html
id: alarm_ds_spotlightclouddatatransfer
folder: ConnectSpotlightDS
---


When this alarm is raised:

* Verify the Spotlight Cloud service is running by accessing https://www.spotlightessentials.com
* Verify the Spotlight Cloud configuration. See Configure Uploading to Spotlight Cloud in the Online Help for more information.
* Verify the Spotlight Diagnostic Server host can connect to the Internet. See Spotlight services requiring Internet access in the Online Help for more information.
* Verify the Proxy Server on the Spotlight Diagnostic Server supports HTTP 1.1.

Data is transferred once a minute from the Spotlight Diagnostic Server to Spotlight Cloud services. Data that is not successfully transferred is discarded.



{% include links.html %}
