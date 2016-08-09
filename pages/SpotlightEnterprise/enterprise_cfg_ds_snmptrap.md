---
title: Configure the SNMP trap
summary: "Provide details of the SNMP manager used by the Spotlight Diagnostic Server (to fulfill on Configure | Alarm Actions | Alarm Action | Send SNMP Trap)."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_snmptrap.html
folder: SpotlightEnterprise
---



## Requirements

A textual representation of the information sent by the Spotlight Diagnostic Server to the SNMP manager is defined in a MIB file. Ensure this MIB file is accessible to your SNMP manager. The MIB file is in the Spotlight Diagnostic Server installation folder, Agent\\bin\\DiagnosticServer.mib.

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the SNMP Trap**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server (Federate Diagnostic Servers) you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured for SNMP.

## Fill in the details

### SNMP Manager Address

Enter the host name or IP address of the SNMP manager. The SNMP trap is sent to this address.

Enter **localhost** to send the SNMP trap to the same computer as the Spotlight Diagnostic Server.

### Port

The SNMP manager is running on this port. The default value is 162. This is the standard setting.

The port number must be correct for the Spotlight Diagnostic Server to send SNMP traps to the SNMP manager. It is critical that the port number is set correctly and it is your responsibility to ensure it is correct. Spotlight cannot detect the port number used by the SNMP manager so Spotlight reports no error if the port number is incorrect.

### Version

Select one of the SNMP versions: SNMPv1, SNMPv2C, SNMPv3.

### Community

Community is applicable to SNMPv1 and SNMPv2C.

The default community value is Public. This is the conventional factory default setting for most SNMP equipment. You can change the community value in Spotlight. Ensure the SNMP manager is configured to recognize the community value set in the Spotlight Diagnostic Server.


## SNMPv3

When version SNMPv3 is selected then enter configuration specifications for username/password authentication and/or data encryption.


### USM User

Your username to the SNMP service.

### Authentication Protocol

Select the appropriate authentication protocol

* None
* MD5 - Message Digest Algorithm 5
* SHA - Secure Hash Algorithm (SHA1 only)

### Authentication Password

Enter the authentication password if applicable.

### Privacy Protocol

Select the appropriate privacy protocol

* None
* DES - Digital Encryption Standard
* AES - Advanced Encryption Standard (128bit key only)

### Privacy Password

Enter the privacy password if applicable.

## Send Test Trap

Click **Send Test Trap** to verify the Spotlight configuration. The test trap checks for basic configuration errors. You should verify the test trap was successfully received by the SNMP manager.

{% include links.html %}
