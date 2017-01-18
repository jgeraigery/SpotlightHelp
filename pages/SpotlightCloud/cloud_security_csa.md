---
title: Cloud Security Alliance Consensus Assessments
summary: ""
sidebar: p_cloud_sidebar
permalink: cloud_security_csa.html
folder: SpotlightCloud
---


## Compliance - Information System Regulatory Mapping

### CO-05a - Do you have the ability to logically segment or encrypt customer data such that, in the event of subpoena, data may be produced for a single tenant only, without inadvertently accessing another tenant's data?
Don't collect sensitive customer data. Data is scrubbed and obfiscated before transmission i.e. In the Spotlight Diagnostic Server on prem,

### CO-05b - Do you have capability to logically segment and recover data for a specific customer in the case of a failure or data loss?
No but we have geo redundancy on storage of data within Azure

## Data Governance - Ownership / Stewardship

### DG-01a - Do you follow a structured data-labeling standard (ex. ISO 15489, Oasis XML Catalog Specification, CSA data type guidance?)
From Microsoft - Microsoft Azure classifies and labels data according to the Microsoft Azure data classification scheme and then implements a standard set of Security and Privacy attributes. Information classification, labeling and handling is covered under the ISO 27001:2013 standards, specifically addressed in domain 8.2.2.

## Data Governance - Secure Disposal

### DG-05a - Do you support secure deletion (ex. degausing / cryptographic wiping) of archived data as determined by the tenant?  
No

### DG-05b - Do you have the ability to sanitize all computing resources of tenant data once a customer has exited your environment?
Microsoft provides the following response with respect to the Windows Azure environment -

Microsoft uses best practice procedures and a wiping solution that is NIST 800-88 compliant. For hard drives that can’t be wiped we use a destruction process that destroys it (i.e. shredding) and renders the recovery of information impossible (e.g., disintegrate, shred, pulverize, or incinerate). The appropriate means of disposal is determined by the asset type.  Records of the destruction are retained.  

All Windows Azure services utilize approved media storage and disposal management services.  Paper documents are destroyed by approved means at the pre-determined end-of-life cycle.  

“Secure disposal or re-use of equipment and disposal of media” is covered under the ISO 27001 standards, specifically addressed in Annex A, domains 9.2.6 and 10.7.2. For more information review of the publicly available ISO standards we are certified against is suggested.

Source : [http://download.microsoft.com/download/7/4/9/749df9e9-4357-4a73-8fd8-9602b1f7a2e1/standardresponsetorequestforinformationwindowsazuresecurityprivacy.docx](http://download.microsoft.com/download/7/4/9/749df9e9-4357-4a73-8fd8-9602b1f7a2e1/standardresponsetorequestforinformationwindowsazuresecurityprivacy.docx)

## Facility Security - User Access

### FS-02a - Do you require strong (multifactor) authentication options (card keys+PIN, biometric readers, etc.) for access to your physical facilities?
Yes – Please see CC5.5 in the SOC 2 Type II report

## Facility Security - Off-Site Authorization

### FS-06a - Do you provide tenants with documentation that describes scenarios where data may be moved from one phyical location to another? (ex. Offsite backups, business continuity failovers, replication)
Yes – Please see the Microsoft OST under the data residency and data processing terms section.

## Facility Security - Off-Site Equipment

### FS-07a - Do you provide tenants with documentation describing your policies and procedures governing asset management and repurposing of equipment?
Some information is provided to customers describing our policies and references to our internal procedures which are reviewed and audited.  Please see CC3.1, CC5.1, CC5.5, and CC5.7 in the SOC 2 Type II report.

## Facility Security - Asset Management

### FS-08a - Do you maintain a complete inventory of all of your critical assets which includes ownership of the asset?
yes.  Please reference SOC2-4 in the SOC 2 Type II report.

### FS-08b - Do you maintain a complete inventory of all of your critical supplier relationships?
yes.  Please reference CCC in the SOC 2 Type II report. 	

## Information Security - Policy

### IS-03a - Do your information security and privacy policies align with particular industry standards (ISO-27001, ISO-22307, CoBIT, etc?)
Yes.  Please reference the Azure Trust Center at [https://www.microsoft.com/en-us/trustcenter/Compliance](https://www.microsoft.com/en-us/trustcenter/Compliance).

### IS-03b - Do you have agreements which ensure your providers adhere to your information security and privacy policies?
Yes.  Please refer to GRM section of the SOC 2 Type II report.

## Information Security - Vulnerability / Patch Management

### IS-20c -  Do you conduct local operating system-layer vulnerability scans regularly as prescribed by industry best practices?
Yes.  Please refer to VM-10 in the SOC 2 type II report.

### IS-20f - Will you provide your risk-based systems patching timeframes to your tenants upon request?
Patching occurs on a periodic basis based on patch availability, criticality, and type of service.  We do not provide a schedule/timeframe to customers.

## Information Security - Anti-Virus / Malicious Software

### IS-21a - Do you have anti-malware programs installed on all systems which support your cloud service offerings?
Please refer to TVM-01 in the SOC 2 Type II report.

## Information Security - Utility Programs Access

### IS-34b - Do you have a capability to detect attacks which target the virtual infrastructure directly (ex. shimming, Blue Pill, Hyperjumping, etc.)?
Yes.  We apply our own threat modelling and detection systems which monitor system activity and customer meta-data activity including ingestion of our Intelligent Security Graph Data to detect attacks against the virtual infrastructure.

### IS-34c - Are attacks which target the virtual infrastructure prevented with techncial controls?
Yes.  Please refer to the SOC 2 Type II report for more detail around our preventative controls at multiple levels.

## Risk Management - Third Party Access

### RI-05a - Do you provide multi-failure disaster recovery capability?
Yes at the platform layer and as various services as provided to the customer to leverage as part of their system architecture.

### RI-05d - Do you provide access to operational redundancy and continuity summaries which include the services on which you depend?
The top level summaries are provided in the SOC 2, ISO, and FedRAMP reports.

## Resiliency - Equipment Location

### RS-06a - Are any of your datacenters located in places which have a high probability/occurance of high-impact environmental risks (floods, tornadoes, earthquakes, hurricanes, etc.)?
No.  Data center location selection takes into account evaluation of environmental risk.

{% include links.html %}
