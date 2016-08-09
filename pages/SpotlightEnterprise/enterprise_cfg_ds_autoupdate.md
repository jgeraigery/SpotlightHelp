---
title: Configure the auto-update facility
summary: "Enable Auto Update so the Spotlight Diagnostic Server will receive minor updates (scripts and configuration) automatically."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_autoupdate.html
folder: SpotlightEnterprise
---



## Requirements

The Spotlight Diagnostic Server requires access to the Internet when Auto-Update is enabled (Spotlight services requiring Internet access). An outgoing HTTPS connection to the following URL is used to retrieve updates.

https://spotlight.blob.core.windows.net

Enabling of Auto-update does not open a port that allows incoming connections.

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the auto-update facility**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server (Federate Diagnostic Servers) you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured to auto update.

## Select - Enable auto-update facility - as appropriate.

### Enable auto-update facility (Selected)

The Spotlight Diagnostic Server will receive minor updates automatically.

### Enable auto-update facility (Not Selected)


Any update to the Spotlight Diagnostic Server will require a new version and installation of Spotlight on SQL Server.




{% include links.html %}
