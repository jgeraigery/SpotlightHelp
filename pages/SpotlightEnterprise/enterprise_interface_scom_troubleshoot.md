---
title: Troubleshooting
summary: "Troubleshooting issues using the Spotlight Management Pack for SCOM."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_scom_troubleshoot.html
folder: SpotlightEnterprise
---

## Acknowledging or snoozing an alarm fails to run or results in error: "LoadFile … An attempt was made to load an assembly from a network location …"

Perhaps Windows® blocked files from the Spotlight Management Pack for SCOM when those files were unzipped on the SCOM Console host.

Resolution

1. Navigate to the directory pointed to by "%sosse_mp_path%"
2. Locate the file associated with the error. Right click on the file and select **Properties**.
3. From the file **Properties** dialog, **General** tab, if you see the **Security** section with an **Unblock** button then click **Unblock** to resolve the problem.

{% include imageClient.html file="pane_scom_troubleshooting_blockedfiles.png" alt="Spotlight Management Pack for SCOM troubleshooting" %}

{% include links.html %}
