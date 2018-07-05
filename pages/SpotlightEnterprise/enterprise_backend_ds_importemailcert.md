---
title: Import an Email Certificate into Spotlight
summary: "Follow these instructions if your email Alarm Actions fail and your email server, proxy or anti-virus software return an untrusted certificate message."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ds_importemailcert.html
folder: SpotlightEnterprise
---


Follow these instructions to import a certificate into Spotlight.

1. [Stop the Spotlight Diagnostic Server service.][enterprise_backend_ds_startstop]
2. From the Spotlight Diagnostic Server install folder, navigate to folder **Agent\bin**
3. Open a cmd shell as the Administrator.
4. Execute command **ImportCertificate *filename-of-certificate-file***

    Where *filename-of-certificate-file* is the full file name of the certificate file. Typically this is a file with a *.cer* extension.

    {% include note.html content="The file name should be enclosed in double quotes if it contains spaces. For example *ImportCertificate.bat "M:\Program Files\Dell\myCertificate.cer"*" %}

5. [Restart the Spotlight Diagnostic Server service.][enterprise_backend_ds_startstop]


{% include links.html %}
