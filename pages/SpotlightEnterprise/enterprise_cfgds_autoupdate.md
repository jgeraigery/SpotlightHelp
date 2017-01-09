---
title: Configure the auto-update facility
summary: "Enable Auto Update so the Spotlight Diagnostic Server will receive minor updates (scripts and configuration) automatically."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_autoupdate.html
folder: SpotlightEnterprise
---



## Auto update and your Spotlight deployment

When auto-update is enabled the Spotlight Diagnostic Server must have Internet access. An outgoing HTTPS connection to the following URL is used to retrieve updates: https://spotlight.blob.core.windows.net

{% include note.html content="Enabling of Auto-update does not open a port that allows incoming connections." %}

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the auto-update facility**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured to auto update.

## Enable auto-update facility as appropriate.

Select **Enable auto-update facility** and the Spotlight Diagnostic Server will receive minor updates automatically.

If **Enable auto-update facility** is Not Selected then an update to the Spotlight Diagnostic Server will require installation of a new version of Spotlight on SQL Server Enterprise.


{% include links.html %}
