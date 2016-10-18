---
title: Spotlight Client
summary: "Use the Spotight Client to comprehensively view Spotlight data and configure Spotlight.  Spotlight Client is a comprehensive viewer to Spotlight data. The Spotlight Client is required to configure Spotlight and access Reporting and Trending data."
sidebar: p_enterprise_sidebar
permalink: enterprise_displaydevice_client.html
folder: SpotlightEnterprise
---

## Installation

The Spotlight Client is installed on a Windows server. For specifications see the Spotlight Enterprise Release Notes.

The Spotlight Client is installed by the Spotlight installer. The Spotlight Client can be installed on the same Windows server as the Spotlight Diagnostic Server but does not have to be.

## Deployment

The Spotlight Client connects to a single Spotlight Diagnostic Server or a federation of Spotlight Diagnostic Server.

### Spotlight Diagnostic Server


Address the Spotlight Client to a Spotlight Diagnostic Server.

In a federation of Spotlight Diagnostic Server, select any Spotlight Diagnostic Server in the federation.

### Spotlight Cloud


Use the Spotlight Client to Configure uploading to Spotlight Cloud.

In a federation of Spotlight Diagnostic Server each Spotlight Diagnostic Server is independently configured for Spotlight Cloud.

### Playback Database

Use the Spotlight Client to configure the Playback Database.

In a federation of Spotlight Diagnostic Server each Spotlight Diagnostic Server connects to its own Playback Database.

### Spotlight Statistics Repository

Use the Spotlight Client to enable and configure the Spotlight Statistics Repository and generate reports.

In a federation of Spotlight Diagnostic Server each Spotlight Statistics Repository is independently configured in relation to the Spotlight Diagnostic Server.

### Monitored connections in the deployment

Use the Spotlight Client to manage the connections monitored by Spotlight.


## Troubleshooting

All data to / from the Spotlight Client passes through the Spotlight Diagnostic Server. Verify the Spotlight Client can connect to the Spotlight Diagnostic Server.

### Permissions for the Spotlight Client

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to access the Spotlight Diagnostic Server, to configure the Spotlight Diagnostic Server, to acknowledge and snooze alarms, and execute actions on monitored systems like kill and pause.

If the Spotlight Client is in a different Windows domain to the domain that the Spotlight Diagnostic Server is in, the domain that the Spotlight Diagnostic Server is in must trust the domain that the Spotlight Client users are in.

### Network ports

Spotlight's ability to function, to collect and display data, may depend on account permissions granted over the network and specific open network ports.

### Internet Options on the Spotlight Client

The Spotlight Client connects to the Spotlight Diagnostic Server via Internet port 40403. If you have customized Internet Options on the Spotlight Client, verify that your customized configurations do not conflict with Spotlight.

### Spotlight Version

Ensure the Spotlight Client and Spotlight Diagnostic Server come from the same version of Spotlight. When upgrading Spotlight on SQL Server you must upgrade both the Spotlight client and Spotlight Diagnostic Server.



{% include links.html %}
