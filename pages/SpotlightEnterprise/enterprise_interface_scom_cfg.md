---
title: Download, Unpack and Configure
summary: "Download, unpack and configure the Spotlight Management Pack for SCOM."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_scom_cfg.html
folder: SpotlightEnterprise
---



## Download
Download the Spotlight Management Pack for SCOM: [http://spotlight.blob.core.windows.net/public/Quest.SoSSE.MP.v12.0.zip](http://spotlight.blob.core.windows.net/public/Quest.SoSSE.MP.v12.0.zip).


## Unpack the Spotlight Management Pack for SCOM
On the Windows server where the SCOM Console is installed:

1. Unzip the contents of Quest.SoSSE.MP.zip to a known directory.
2. Create an Environment Variable called sosse_mp_path. Set the Environment Variable value to the directory above. This Environment Variable is required to snooze, unsnooze and acknowledge alarms from the SCOM application.

Open the SCOM Console:

1. Expand **Administration**.
2. Select **Management Packs**.
3. Right click **Management Packs** and select to import the Quest.SoSSE.mpb management pack from the directory created above.

## Configure the Spotlight Management Pack for SCOM

Repeat these steps for each Spotlight Diagnostic Server. The purpose of these steps is to configure SCOM to target the Windows server that hosts the Spotlight Diagnostic Server.

1. From the SCOM Console, expand **Administration \| Device Management**.
2. Right click **Device Management** and select **Discovery Wizard…** to open the Computer and Device Management Wizard.

### Complete the Computer and Device Management Wizard

#### Discovery Type
Select Windows computers to discover devices of this type.

#### Auto or Advanced?

Select Advanced Discovery.

Parameter | Description
----------|------------
Computer and Device Classes | Select Servers and Clients.
Management Server | Select the Windows computer hosting the Spotlight Diagnostic Server. As per the requirements it is recommended that the Spotlight Diagnostic Server and SCOM Management Server are installed on different host computers.

#### Discovery Method
Select Browse for, or type in computer names.

From the Select Computers dialog select objects of type Computers from the Entire Directory. Enter the name(s) of the computer(s) running a Spotlight Diagnostic Server.

#### Administrator Account
Select **Other User Account**. Enter the account details of a Windows user that is a member of the Spotlight Diagnostic Administrators Group for the Spotlight Diagnostic Server.

#### Select Objects to Manage
Use SCOM Agent or Agentless monitoring.

Option | Description
-------|------------
Agent | To use SCOM Agent monitoring, set the Management Mode option to **Agent**. Click **Next** to open the Summary page of the Computer and Device Management wizard.
Agentless | To use SCOM Agentless monitoring, set the Management Mode option to **Agentless**. Click **Finish** to complete the Computer and Device Management wizard.

#### Summary

The Summary page is applicable to SCOM Agent monitoring.

Verify / Change the Agent installation directory.

Enter credentials for the Agent Action Account. Enter the account details of a Windows user that is a member of the Spotlight Diagnostic Administrators Group for the Spotlight Diagnostic Server and an Administrator on the Spotlight Diagnostic Server host.


{% include links.html %}
