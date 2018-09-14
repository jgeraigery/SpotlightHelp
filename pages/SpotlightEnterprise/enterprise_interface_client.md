---
title: The Spotlight Client
summary: "Use the Spotight Client to comprehensively view Spotlight data and configure Spotlight."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_client.html
folder: SpotlightEnterprise
---

## Installation

The Spotlight Client is installed by the [Spotlight Enterprise installer][enterprise_install]. The Spotlight Client can be installed on the same Windows server as the Spotlight Diagnostic Server but does not have to be.

## Monitor Connections

Use the Spotlight Client to monitor connections. See the [Heatmap in Spotlight Enterprise][enterprise_display_heatmap].


## Deployment

### Spotlight Diagnostic Server

The Spotlight Client connects to a single Spotlight Diagnostic Server or a federation of Spotlight Diagnostic Server.

### Spotlight Cloud

Use the Spotlight Client to [Configure uploading to Spotlight Cloud][enterprise_cfgds_spotlightcloud].

In a federation of Spotlight Diagnostic Server each Spotlight Diagnostic Server is independently configured for Spotlight Cloud.

### Playback Database

Use the Spotlight Client to [configure the Playback Database][enterprise_cfgds_playbackdatabase].

In a federation of Spotlight Diagnostic Server each Spotlight Diagnostic Server connects to its own Playback Database.

### Spotlight Statistics Repository

Use the Spotlight Client to enable and [configure the Spotlight Statistics Repository][enterprise_cfgds_ssr] and generate reports.


### Monitored connections in the deployment

Use the Spotlight Client to [manage the connections][enterprise_cfgmonitor_connect] monitored by Spotlight.


## Troubleshooting

### Permissions for the Spotlight Client

The Windows credentials used to run the Spotlight Client grant required permissions for the Spotlight Client to access the Spotlight Diagnostic Server, to configure the Spotlight Diagnostic Server, to acknowledge and snooze alarms, and execute actions on monitored systems like kill and pause. See [Permission to use Spotlight][enterprise_interface_client_permissions].

If the Spotlight Client is in a different Windows domain to the domain that the Spotlight Diagnostic Server is in, the domain that the Spotlight Diagnostic Server is in must trust the domain that the Spotlight Client users are in.

### Network ports

Spotlight's ability to function, to collect and display data, may depend on account permissions granted over the network and specific open network ports. See [Network Ports][enterprise_backend_networkports]

### Internet Options on the Spotlight Client

The Spotlight Client connects to the Spotlight Diagnostic Server via Internet port 40403. If you have customized Internet Options on the Spotlight Client, verify that your customized configurations do not conflict with Spotlight. See [Internet Options on the Spotlight Client][enterprise_interface_client_internetoptions].

### Spotlight Version

Ensure the Spotlight Client and Spotlight Diagnostic Server come from the same version of Spotlight. When upgrading Spotlight, you must upgrade both the Spotlight Client and Spotlight Diagnostic Server.



{% include links.html %}
