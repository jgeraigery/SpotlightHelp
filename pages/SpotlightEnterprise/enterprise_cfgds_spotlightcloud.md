---
title: Configure uploading to the Spotlight Cloud
summary: "Enable functionality to monitor Spotlight connections from the Spotlight web site or Spotlight Mobile. Upload performance data for health check analysis."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_spotlightcloud.html
id: 706
folder: SpotlightEnterprise
---



## Open this screen from the Spotlight Client

Click {% include inline_imageClient.html file="tb_config_spotlightcloud.png" alt="Configure Spotlight Cloud" %} **Configure \| Spotlight Cloud**.


## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured for Spotlight Cloud.

## Upload data to Spotlight Cloud

Select **Upload data to Spotlight Cloud** to enable functionality to monitor Spotlight connections from the Spotlight web site or Spotlight Mobile. Upload performance data for health check analysis.

If you clear **Upload data to Spotlight Cloud** then Spotlight Cloud services are disabled for this Spotlight Diagnostic Server. Spotlight connections cannot be monitored from the Spotlight web site or Spotlight Mobile. Performance data for health check analysis is not uploaded to the Spotlight Cloud.

## Sign in with Quest account details

This section must be filled in when uploading of data to the Spotlight Cloud is enabled. When this section is filled in the Spotlight Organization assigned to your Quest account is on display.

Click **Sign up** if you do not have a Quest account. You must use this link to sign up for a Quest account to use with Spotlight Enterprise. The Sign in link on the website (spotlightessentials.com) is specific to the Spotlight Cloud product and cannot be used with the Spotlight Enterprise product.

When you have a Quest account then click **Sign in** to enter your Quest account details.

1. You will be prompted to provide Quest account details: name, password, email address and country of residence.
2. An email will be sent to you from support@quest.com.
3. Verify your email address in one of two ways:
   * The email contains a verification code. In the Spotlight dialog, enter the verification code and click **Verify Email Address**.
   * Click the **Verify Email Address** link in the email.
4. Your Spotlight Organization will now be visible to show that you have signed in and your email address is verified.


## Upgrades from Spotlight on SQL Server 11.0 or earlier and Spotlight Mobile

If you used Spotlight to monitor your SQL Server connections on a mobile device in the past (Spotlight on SQL Server 11.0 or earlier) then you must uninstall the Spotlight Web Publisher via Windows \| Control Panel \| Programs and Features. The Spotlight Web Publisher was required in the past to monitor SQL Server connections on a mobile device. It is now important that you uninstall it. By default the Spotlight Web Publisher was installed on the same computer as the Spotlight Diagnostic Server.


{% include links.html %}
