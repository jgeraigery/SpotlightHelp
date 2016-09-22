---
title: Spotlight web site
summary: "Monitor Spotlight connections from the Spotlight web site."
sidebar: p_enterprise_sidebar
permalink: enterprise_displaydevice_website.html
folder: SpotlightEnterprise
---

Monitoring features include a heat map, an alarms list, alarm details and the ability to snooze and acknowledge alarms.

Sign in with Spotlight Cloud credentials to www.spotlightessentials.com



## Configuration

The Spotlight Diagnostic Server must be configured to allow you to monitor Spotlight connections from the Spotlight web site.

1. Create a Spotlight Cloud (Spotlight Essentials) account if you do not already have one. Do this at www.spotlightessentials.com.
2. Use a Spotlight Client to Configure uploading to Spotlight Cloud.



TIP: In a corporate enterprise your Spotlight Cloud (Spotlight Essentials) account may receive a request to join an organization. In an organization, performance analysis data is uploaded to the organization and is available to all members of the organization. For more information, see Spotlight Cloud \| Organizations.

## Deployment

### Spotlight Diagnostic Server

Data is uploaded from the Spotlight Diagnostic Server to the Spotlight Cloud. Ensure the Spotlight Diagnostic Server has access to the Internet. For more information, see Spotlight services requiring Internet access.

### Playback Database

Use a Spotlight Client to configure the Playback Database for the Spotlight Diagnostic Server. The Spotlight web site does not have the facility to configure the Playback Database.

### Spotlight Statistics Repository

Use a Spotlight Client to access the Spotlight Statistics Repository. The Spotlight web site does not have access to the Spotlight Statistics Repository.

### Monitored connections in the deployment

Use a Spotlight Client to manage the connections monitored by the Spotlight Diagnostic Server. The Spotlight web site does not have the facility to manage Spotlight connections.



{% include links.html %}
