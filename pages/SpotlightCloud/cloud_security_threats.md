---
title: Known Threats
summary: ""
sidebar: p_cloud_sidebar
permalink: cloud_security_threats.html
folder: SpotlightCloud
---


### The Spotlight website is not vulnerable to the threats posed by the “Shellshock” bug.
Shellshock is the name that’s been given to a security bug found in Bash, a command shell program commonly used on Linux and UNIX systems. The Spotlight web servers do not use Linux or UNIX systems and therefore are not vulnerable to the security bug found in Bash. Officially, the bug is documented as CVE-2014-6271 and CVE-2014-7169.

### Is the Spotlight website vulnerable to the threats posed by Heartbleed?
No, the Heartbleed vulnerability issue is specific to OpenSSL. The Spotlight website uses Microsoft Azure Web Roles and these do not use OpenSSL to terminate SSL connections. Windows comes with its own encryption component called Secure Channel (a.k.a. SChannel), which is not susceptible to the Heartbleed vulnerability.

{% include links.html %}
