---
title: Java KeyStore
summary: "A Java KeyStore (JKS) is a repository of security certificates."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ds_javakeystore.html
folder: SpotlightEnterprise
---

After successfully changing the password, you can use the Java keytool (Agent\bin\jre\bin\keytool.exe) to change or sign the Spotlight Diagnostic Server certificate, which is stored in the "sosse" key alias.

To set the KeyStore password:

1. [Stop the Spotlight Diagnostic Server service.][enterprise_backend_ds_startstop]
2. From the Spotlight Diagnostic Server install folder, navigate to folder **Agent\bin\**
3. Open a cmd shell as the Administrator.
4. Execute command **DSKeyToolCLI -storepasswd**
5. Enter a new password of at least 6 characters.
6. [Restart the Spotlight Diagnostic Server service.][enterprise_backend_ds_startstop]

Verify that Alarm Actions and Planned Outages are working as expected.

Verify that a keystore password entry can be found in the Spotlight Diagnostic Server install folder **conf\Service\WebServic.xml**

For more information, see [http://docs.oracle.com/javase/8/docs/technotes/tools/windows/keytool.html](http://docs.oracle.com/javase/8/docs/technotes/tools/windows/keytool.html).

{% include links.html %}
