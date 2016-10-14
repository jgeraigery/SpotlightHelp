---
title: Backend Deployment
summary: "Following installation you may choose to expand your backend deployment of Spotlight or further understand your current backend deployment."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend.html
folder: SpotlightEnterprise
---


## Data Collection and Storage

A minimal Spotlight Enterprise deployment consists of a Spotlight Diagnostic Server (to collect Spotlight data), a Spotlight Client (to view Spotlight data) and a Playback Database (to store recent history). These components are installed by the Spotlight Enterprise installer. Following installation you may choose to expand your deployment. Following are all the components of Spotlight Enterprise that collect and store data.

### Spotlight Diagnostic Server

The Spotlight Diagnostic Server is at the core of the Spotlight Enterprise architecture. All Spotlight data passes through the Spotlight Diagnostic Server. The Spotlight Diagnostic Server is a Windows service. It runs under Windows credentials.

### Playback Database

Recent history is stored in the Playback Database. The Playback Database is deployed on SQL Server. There is one Playback Database per Spotlight Diagnostic Server.

### Spotlight Statistics Repository

Long term history for reporting and trending is stored in the Spotlight Statistics Repository. The Spotlight Statistics Repository is deployed on SQL Server. Deployment of the Spotlight Statistics Repository is optional per Spotlight Diagnostic Server.

### Spotlight Cloud

Upload health performance data to the Spotlight Cloud. Deployment of the Spotlight Cloud to collect and store data is optional per Spotlight Diagnostic Server.


## Deployment over the Windows network

A Spotlight Enterprise deployment consists of many components that may be spread over a wide network.

### Network ports

Spotlight's ability to function, to collect and display data, may depend on account permissions granted over the network and specific open network ports.

### Spotlight diagnostic user groups

Spotlight diagnostic user groups are Windows groups created on install of Spotlight. Spotlight uses these groups to authenticate Spotlight Client access to the Spotlight Diagnostic Server. Membership of these groups affects the Spotlight Client's ability to configure Spotlight and execute actions on monitored Windows Server and SQL Server instances.

### WMI

The Spotlight Diagnostic Server collects data from monitored SQL Server instances, Windows servers and hosts of database connections via WMI queries and remote registry connection. Most of the collections use WMI connection.


{% include links.html %}
