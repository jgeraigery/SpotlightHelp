---
title: Backend Deployment of Spotlight Cloud Mobile
summary: "This page is applicable where Spotlight Cloud Mobile connects to a Spotlight Enterprise deployment."
sidebar: p_mobile_sidebar
permalink: mobile_backend_enterprise.html
folder: SpotlightMobile
---



## Spotlight Client

Use a Spotlight Client to add and remove the connections monitored through Spotlight. A Spotlight Client is used to configure alarms, to configure the collection schedules and other operational configurations of the deployment. This cannot be done in Spotlight Cloud Mobile.

## Spotlight Diagnostic Server and the Spotlight Cloud

To use Spotlight Cloud Mobile the Spotlight Diagnostic Server must have access to the Internet and must be configured to upload to the Spotlight Cloud. Ensure:

* The Spotlight Diagnostic Server is configured to upload data to the Spotlight Cloud.
* The Spotlight Diagnostic Server has access to the Internet.
* Port TCP 443 on the Spotlight Diagnostic Server is open.

The Spotlight Diagnostic Server is a Windows service. It runs under Windows credentials. The Spotlight Diagnostic Server is at the core of the Spotlight Enterprise architecture. All data from monitored connections passes through the Spotlight Diagnostic Server.


## Spotlight Playback Database

Spotlight Cloud Mobile views data from the Playback Database on the Playback display. Recent history is stored in the Playback Database. Spotlight Cloud Mobile cannot be used to configure the Playback Database. Use a Spotlight Client to configure the Playback Database. There is one Playback Database per Spotlight Diagnostic Server.


## Spotlight Statistics Repository

The Spotlight Statistics Repository is inaccessible to Spotlight Cloud Mobile. Use a Spotlight Client to access the Spotlight Statistics Repository. Long term history for reporting and trending is stored in the Spotlight Statistics Repository. Deployment of the Spotlight Statistics Repository is optional per Spotlight Diagnostic Server.



{% include links.html %}
