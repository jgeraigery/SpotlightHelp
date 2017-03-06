---
title: Uninstall Spotlight Enterprise
summary: "Follow these steps to uninstall Spotlight Enterprise. Multiple Spotlight Clients and servers may be involved."
sidebar: p_enterprise_sidebar
permalink: enterprise_uninstall.html
folder: SpotlightEnterprise
---




## 1. Backup before uninstall
[Backup all Spotlight configuration and saved collection data][enterprise_backend_backupdata].

## 2. Uninstall the Spotlight Diagnostic Server

For the Windows server on which the Spotlight Diagnostic Server is installed:

1. Open Windows **Control Panel**.
2. Select **Programs and Features**
3. Select **Spotlight Diagnostic Server** and click **Remove**.

{% include note.html content="A running Spotlight Diagnostic Server is automatically shut down before being uninstalled." %}

## 3. Uninstall Spotlight Clients

Repeat for each Windows server on which a Spotlight Client is installed:

1. Open Windows **Control Panel**.
2. Select **Programs and Features**
3. Select **Spotlight Enterprise** and click **Remove**.

{% include tip.html content="Uninstall the Spotlight Diagnostic Server before you uninstall all Spotlight clients." %}

## 4. Delete the Playback Database and Spotlight Statistics Repository
The Playback Database and Spotlight Statistics Repository are not removed when Spotlight Enterprise is uninstalled. You may delete them independently. You may use the Playback Database again with another Spotlight Enterprise installation.

{% include links.html %}
