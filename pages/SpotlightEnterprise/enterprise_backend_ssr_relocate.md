---
title: Re-Locate the Spotlight Statistics Repository
summary: "Complete the following steps to re-locate the Spotlight Statistics Repository database without losing any existing data."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ssr_relocate.html
folder: SpotlightEnterprise
---

1. [Stop the Spotlight Diagnostic Server][enterprise_backend_ds_startstop].
2. [Backup the existing Spotlight Statistics Repository][enterprise_backend_backupdata].
3. Restore the Spotlight Statistics Repository to the new database.
4. [Start the Spotlight Diagnostic Server][enterprise_backend_ds_startstop].
5. Using the Spotlight Client, select **Configure \| Diagnostic Server \| [Configure the Spotlight Statistics Repository][enterprise_cfgds_ssr]**.





{% include links.html %}
