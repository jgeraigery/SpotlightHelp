---
title: Data Handling and Security
summary: ""
sidebar: p_cloud_sidebar
permalink: cloud_security.html
folder: SpotlightCloud
---



## What data are we sending?
Any user of various Quest Software products can opt-in to send system configuration and performance metrics from their SQL Server or Oracle environment to the Spotlight Cloud. Data is collected and then sent periodically. Once it is uploaded we store it for analysis and consumption by the end user. From the data and subsequent analysis, Spotlight Cloud is able to generate a picture of your system's health and performance. The actual source of the data that these products send is documented below in Appendix A.

## How are we sending the data?
The data is sent from Spotlight on SQL Server Enterprise, Spotlight on Oracle, Toad for SQL Server, Toad for Oracle and Spotlight Developer to SpotlightEssentials.com over the internet. We enforce SSL (https) on the API endpoints on the web site so that all data sent to us is encrypted.

## What encryption algorithms/levels/technologies do we use to transmit and store data?
The data is transmitted from the Spotlight Diagnostic Server to the Spotlight Cloud and from Spotlight Cloud to the web browser over SSL via https. Data at rest is encrypted using TripleDES. We will also implement ‘encrypt at rest’ for SQL queries and query plans: [https://docs.microsoft.com/en-us/azure/storage/storage-service-encryption](https://docs.microsoft.com/en-us/azure/storage/storage-service-encryption)

## How is the data stored in the Spotlight Cloud?
Data is uploaded as an XML (Atom feed) or JSON object and is stored in Microsoft's Azure Cloud Platform. The datacenter we currently use is in the north west of the United States of America. This data may be geo-replicated to other datacenters within the United States. The raw data that is uploaded is kept in the blob store and is encrypted at rest. Processed data that is non-numeric (for example SQL text and plans (extracted from the uploaded data)) are encrypted at rest. This is done so that if our storage account(s) in the datacenter is compromised, none of the data is readable.

## How are users authenticated on the Spotlight web site?
Following registration on the Spotlight web site, each user is assigned a unique user name and password. Users are required to enter these credentials over an SSL (https) connection to login to the Spotlight web site.

## How are users authenticated when using Spotlight Mobile?
Following registration on the Spotlight web site, each user is assigned a unique user name and password, or if using a Windows device, a unique user token and password. Users are required to enter these credentials over an SSL connection to sign in to Spotlight Mobile.

## Where can I find security and compliance information on the Windows Azure Platform?
The best place to go is the [Windows Azure site](https://azure.microsoft.com/en-us/support/trust-center/).

## What information do we store in the cloud about the mobile devices themselves that are accessing data from the Spotlight Cloud?
Only mobile devices that have elected to receive “push notifications” from Spotlight are “identified” and recorded. For these devices we store:

*	The generic type of device: i.e. “iOS” or “Android”
*	A unique identifier. For Android this is the IMEI for GSM and the MEID or ESN for CDMA phones. For Apple devices the identifier is unique to Quest and unable to be used more broadly in identifying the device.
These two pieces of information are stored against the Spotlight Cloud user account (i.e. their email address)

## What volume of data (per monitored instance) can we expect to be transmitted under normal usage?
The results of an analysis of the uploaded and stored data from SQL Server procedures (from a sample size of 1,000 SQL Server connections) resulted in approximately 43Mb per day per SQL Server instance total compressed data in Microsoft Azure. The Health Check data as a percentage of this was roughly 5%. This analysis did not include data from monitored Operating Systems. We would expect the volume of data to increase with the inclusion of uploads of data from more procedures and SQL plans in future releases. 

## Can we provide audit logs to the customer of user access and what has been done?
Web logs for a particular user can be provided.

## Have we ever been asked to provide a SSAE 16 or SAS 70 report to show security compliance?
Not specifically however we have supplied answers to a [Cloud Security Alliance Risk Assessment][cloud_security_csa].

## Do we guarantee that uploaded data is stored exclusively in the US and is not geo-replicated to other countries?
The data at rest is stored in the United States. Azure storage accounts with geo-replication replicate to other sites in the United States.

{% include links.html %}
