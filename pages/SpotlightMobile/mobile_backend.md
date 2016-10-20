---
title: Backend Deployment of Spotlight Mobile
summary: "Spotlight Mobile connects to the components of a Spotlight Enterprise deployment."
sidebar: p_mobile_sidebar
permalink: mobile_backend.html
folder: SpotlightMobile
---




## Spotlight Client

A Spotlight Client is used to configure Spotlight. For example, a Spotlight Client is used to add and remove the connections monitored through Spotlight. A Spotlight Client is used to configure alarms, to configure the collection schedules and other configurations of the deployment. This cannot be done in Spotlight Mobile.

## Data Collection and Storage

### Spotlight Diagnostic Server

The Spotlight Diagnostic Server is at the core of the Spotlight Enterprise architecture. All Spotlight data passes through the Spotlight Diagnostic Server. The Spotlight Diagnostic Server is a Windows service. It runs under Windows credentials.

### Spotlight Playback Database

Recent history is stored in the Playback Database. The Playback Database is deployed on SQL Server. There is one Playback Database per Spotlight Diagnostic Server. Spotlight Mobile cannot be used to configure the Playback Database. Use a Spotlight Client to configure the Playback Database.

### Spotlight Statistics Repository

Long term history for reporting and trending is stored in the Spotlight Statistics Repository. The Spotlight Statistics Repository is inaccessible to Spotlight Mobile. Use a Spotlight Client to access the Spotlight Statistics Repository. Note that deployment of the Spotlight Statistics Repository is optional per Spotlight Diagnostic Server.

## Deployment over the Internet

Deployment over the Internet is a prerequisite to using Spotlight Mobile. Deployment of the Spotlight Cloud to collect and store data is optional per Spotlight Diagnostic Server. Ensure:

* The Spotlight Diagnostic Server is configured to upload data to the Spotlight Cloud.
* The Spotlight Diagnostic Server has access to the Internet.
* Port TCP 443 on the Spotlight Diagnostic Server is open.



{% include links.html %}
