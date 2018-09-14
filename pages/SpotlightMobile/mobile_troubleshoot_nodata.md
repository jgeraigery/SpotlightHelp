---
title: Troubleshoot (No connection data)
keywords: mobile
summary: "Please ensure Spotlight Enterprise is configured to upload data for mobile monitoring."
sidebar: p_mobile_sidebar
permalink: mobile_troubleshoot_nodata.html
folder: SpotlightMobile
---


If you see the "No connection data" error message on your mobile device, try the following:

## Install and Deploy Spotlight Enterprise
If you have not already done so, use a Microsoft Windows hosted operating system to download, install and deploy Spotlight Enterprise from https://quest.com. Use the Spotlight Client (a component of this install) to add connections to monitor.

[Learn more][enterprise_install]

## Connect the Diagnostic Server connected to the Internet
The Spotlight Diagnostic Server is a Windows service installed with Spotlight Enterprise. You will see “no data” if this service is switched off or otherwise disconnected from the Internet.

[Learn more][enterprise_backend_ds_internetaccess]

## Upload data to Spotlight Cloud
Ensure the Spotlight Diagnostic Server is configured to upload data to Spotlight Cloud. Use a Spotlight Client to ensure this configuration is set correctly.

[Learn more][enterprise_cfgds_spotlightcloud]

## Your Quest Account
Ensure your Quest Account is a member of the Spotlight Organization configured for this Spotlight Enterprise deployment.

The Spotlight Organization configured for this Spotlight Enterprise deployment is visible from any Spotlight Client connected to the Spotlight Diagnostic Server on this page - [Configure uploading to the Spotlight Cloud][enterprise_cfgds_spotlightcloud]

To see the Spotlight Organization your Quest Account is a member of, sign in to [https://app.spotlightcloud.io](https://app.spotlightcloud.io) and from the Profile icon ({% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %}) select **Account Settings** to open your Quest Account Profile. You can additionally click **People** to see which people are in your Spotlight Organization.


{% include links.html %}
