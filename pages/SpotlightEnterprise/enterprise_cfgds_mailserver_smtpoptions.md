---
title: SMTP mail options dialog
summary: "The purpose of this dialog is to Configure the Diagnostic Server's mail server."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_mailserver_smtpoptions.html
folder: SpotlightEnterprise
---


## How to open this dialog from the Spotlight Client

This dialog is opened from the [Configure the Diagnostic Server's mail server dialog][enterprise_cfgds_mailserver] or Send an Email dialog.

The Spotlight Diagnostic Server uses these settings to fulfill on Configure \| Alarm Actions \| Alarm Action \| Send email to.


## How to fill in the settings for this dialog

### Import settings

Click **Import Mail Settings** to import settings from Microsoft Outlook Express or Windows Mail. The imported settings are applied to the User information and Server information sections. They are filled in with the default account details setup for Microsoft Outlook Express or Windows Mail.

Requires Microsoft Outlook Express or Windows Mail to be setup on the Spotlight Diagnostic Server.

### User information

When an alarm is raised, email will be sent from the name and email address entered here. Specify a Reply address so recipients can reply to the alarm notification.

This section is filled in for you if you clicked **Import Settings**.

### Recipient list

When an alarm is raised, email will be sent to the addresses in this recipient list (by default). Type each email address on a separate line or separate each email address with a semi-colon.

### Server information

Type the details required to send an email from the Spotlight Diagnostic Server.

This section is filled in for you if you clicked **Import Settings**.

## How to clear the settings for this dialog

To clear saved mail server settings for the Spotlight Diagnostic Server, click **Clear** and then click **OK**. Click **Clear** to clear current settings for this dialog. Click **OK** to save changes.

{% include links.html %}
