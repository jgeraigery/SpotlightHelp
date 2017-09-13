---
title: Upgrade Spotlight in a Federated Spotlight Deployment
summary: "If Spotlight Enterprise is deployed as a federated system of multiple Spotlight Diagnostic Server then follow these upgrade steps for best practice and make sure all the Spotlight Diagnostic Server in the federation are included in the upgrade process."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_federation_upgrade.html
folder: SpotlightEnterprise
---




## Backup first
[Backup all Spotlight configuration and saved collection data][enterprise_backend_backupdata].

## Close all Spotlight Clients
Close all Spotlight Clients connected to the Federation.

## Upgrade the Configuration Server
To upgrade the Configuration Server, run the Spotlight Enterprise executable on the Configuration server host.

One Spotlight Diagnostic Server in the federation is selected as the Configuration server. For more information on the Configuration Server, see [Configure Operations][enterprise_backend_federation_cfgops].

## Upgrade all other Spotlight Diagnostic Server in the Federation
Now you have upgraded the Configuration Server, run the Spotlight Enterprise executable on all other Spotlight Diagnostic Server in the federation. Make sure all the Spotlight Diagnostic Server in the federation are included in the upgrade process.

## Re-open Spotlight Clients
Re-open Spotlight Clients connected to the federation.

## Upgrade the Playback Database and Spotlight Statistics Repository
The Playback Database and Spotlight Statistics Repository are automatically upgraded the next time they are accessed by the Spotlight Diagnostic Server.

{% include note.html content="If in your environment the Playback Database / Spotlight Statistics Repository are replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication." %}

## Frequently Asked Questions
For general questions on upgrading Spotlight, see [Upgrade Spotlight Enterprise][enterprise_upgrade].

{% include links.html %}
