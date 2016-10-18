---
title: Backend Deployment of Spotlight Mobile
summary: "Following installation you may choose to expand your backend deployment of Spotlight or further understand your current backend deployment."
sidebar: p_mobile_sidebar
permalink: mobile_backend.html
folder: SpotlightMobile
---




## Spotlight Enterprise components

A minimal Spotlight Enterprise deployment consists of a Spotlight Client (to customize Spotlight and view data from monitored systems), a Spotlight Diagnostic Server (to collect data from monitored systems) and a Playback Database (to store recent history). These components are installed with Spotlight Enterprise.

### Spotlight Client

A Spotlight Client is used to configure Spotlight. For example, a Spotlight Client is used to add and remove the connections monitored through Spotlight. This cannot be done in Spotlight Mobile.

### Spotlight Diagnostic Server

The Spotlight Diagnostic Server is at the core of the Spotlight Enterprise architecture. All Spotlight data passes through the Spotlight Diagnostic Server. The Spotlight Diagnostic Server is a Windows service. It runs under Windows credentials.

### Spotlight Playback Database

Recent history is stored in the Playback Database. The Playback Database is deployed on SQL Server. There is one Playback Database per Spotlight Diagnostic Server.

Spotlight Mobile cannot be used to configure the Playback Database. Use a Spotlight Client to configure the Playback Database.

### Spotlight Statistics Repository

Long term history for reporting and trending is stored in the Spotlight Statistics Repository. The Spotlight Statistics Repository is inaccessible to Spotlight Mobile.

Use a Spotlight Client to access the Spotlight Statistics Repository. Note that deployment of the Spotlight Statistics Repository is optional per Spotlight Diagnostic Server.


## Manage Spotlight Monitored connections

Use a Spotlight Client to add and remove connections and edit connection properties. Spotlight Mobile does not have the facility to manage (add, remove, edit properties) Spotlight connections.

## Deployment over the Internet / Spotlight Cloud - A pre-requisite for Spotlight Mobile

Deployment of the Spotlight Cloud to collect and store data is optional per Spotlight Diagnostic Server. A prerequisite to using Spotlight Mobile is

* The Spotlight Diagnostic Server is configured to upload data to the Spotlight Cloud.
* The Spotlight Diagnostic Server has access to the Internet.
* Port TCP 443 on the Spotlight Diagnostic Server is open.



{% include links.html %}
