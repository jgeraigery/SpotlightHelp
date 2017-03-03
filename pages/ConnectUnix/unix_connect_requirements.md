---
title: Unix/Linux Connection Requirements and Initial Configuration
tags: [connection_requirements]
summary: "Spotlight can monitor Unix and Linux Servers and hosts of database connections according to the following requirements."
sidebar: c_unix_sidebar
permalink: unix_connect_requirements.html
folder: ConnectUnix
---


## Unix/Linux Servers
Spotlight can monitor the following operating systems:

* Red Hat Enterprise 7.3
* Ubuntu® 16.04 and 16.10

## Unix/Linux Server Software
Ensure the following programs are accessible to the user logged on to the Unix/Linux machine.

* Perl 5.x
* awk
* cat
* date
* df
* grep
* ifconfig
* iostat
* netstat
* ps
* sar
* sed
* tr
* uname
* uptime
* vmstat
* wc
* who


### Additional Server Software for Ubuntu
Install the **sysstat** package. On Ubuntu the **sysstat** package is not installed by default. If this package is not installed the Spotlight Overview page Storage panel Disk Activity metrics and Disk Writes/Reads flows will show no data.

Install by command:

```
apt-get install sysstat
```

or

```
sudo apt-get install sysstat
```


## User Permissions

* The Unix/Linux user should have no special processing on log-on. In particular there must be no input required from the user, and nor should any special login banners be displayed.
* The sysstat package must be installed to enable the user to get detailed disk I/O information.
* The /proc filesystem must be present.
* The sshd daemon must be installed and running and configured to receive remote connections.
* The Unix/Linux user must have read/write access to /tmp

## Remote Connectivity: SSH

* The connection type SSH is supported.
* Commands to observe system activity (for example, netstat, vmstat, iostat, sar) must be accessible to SSH sessions for Spotlight to observe Unix activity. Ensure these commands are located in the search path for SSH sessions. If not, Spotlight will display an error.

* Spotlight supports both SSH1 and SSH2 protocols.
* To allow Spotlight to make SSH connections to any Unix or Linux hosts that permit SSH connections, you may need to alter the PasswordAuthentication configuration item in the sshd_config file. Set the value of PasswordAuthentication to yes. Once you have modified the sshd_config file you must restart the sshd process to apply the new setting.


 {% include links.html %}
