---
title: Separate an existing deployment
summary: "These instructions provide a way of moving monitored connections from one Spotlight Diagnostic Server to another. You may need to split a large Spotlight Diagnostic Server deployment into multiple deployments prior to federation. You would like to know how to do that without having to manually recreate all connections and configurations."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_federation_separate.html
folder: SpotlightEnterprise
---



## Backup your current Spotlight Diagnostic Server deployment
[Backup all Spotlight configuration and saved collection data][enterprise_backend_backupdata].

For these instructions we recommend you backup the entire Spotlight Diagnostic Server installation folder.

```
C:\Program Files\Quest Software\Diagnostic Server\
```

Remember to also backup the Playback Database and Spotlight Statistics Repository.


## Install a new Spotlight Diagnostic Server
If you intend to federate this Spotlight Diagnostic Server with your current Spotlight Diagnostic Server deployment then:

* The new Spotlight Diagnostic Server should be running the same Spotlight Enterprise Version as your current Spotlight Enterprise deployment.
* Configure a separate Playback Database and Spotlight Statistics Repository for the new Spotlight Diagnostic Server.
* Open TCP Port 40403 on the new Spotlight Diagnostic Server.
* Regarding the credentials used to run this Spotlight Diagnostic Server:
   * Run this new Spotlight Diagnostic Server under same credentials as the current Spotlight Diagnostic Server or
   two credentials which both in local administrator and DS administrator group in each host.
   * Following Federation this Spotlight Diagnostic Server will authenticate with the Configuration server (the current Spotlight Diagnostic Server deployment) using Windows authentication over TCP port 40403. The Windows account that each Spotlight Diagnostic Server is running under must be valid in the domain of the Configuration server (the current Spotlight Diagnostic Server deployment).
   * Spotlight Diagnostic Server running under the built in Windows accounts (local system or network service) cannot be federated.

Prerequisites: the two DS host should be in a same domain or two domains that trust each other.

## Copy Monitored Connection Entity Files to the new Spotlight Diagnostic Server
This will migrate monitored connections to the new Spotlight Diagnostic Server. Data for monitored connections is stored in the Spotlight Diagnostic Server installation folder

```
C:\Program Files\Quest Software\Diagnostic Server\Agent\conf\Monitored_Entity\
```

* Select the files for those monitored entities you want to monitor on the new Spotlight Diagnostic Server.
* Copy those files to the new Spotlight Diagnostic Server **\Agent\conf\Monitored_Entity** folder.
* DO NOT copy the **_agent.xml** file.

{% include note.html content="The configured alarms, background schedules and planned outages are all include in the monitored_entity file, so they migrate automatically to the new Spotlight Diagnostic Server." %}

{% include note.html content="Alarm Actions have not migrated to the new Spotlight Diagnostic Server. Alarm Actions will synchronize when the two Spotlight Diagnostic Server are federated. If you are not going to federate you can copy Alarm Actions by copying *\Agent\conf\Action* from the original Spotlight Diagnostic Server installation directory to the new Spotlight Diagnostic Server installation directory." %}

## Setup the mail server on the new Spotlight Diagnostic server
See [Configure the Diagnostic Server's mail server][enterprise_cfgds_mailserver].

The email alarm actions on the two Spotlight Diagnostic Servers execute independently.

## Restart the new Spotlight Diagnostic Server
See [Start and stop the Spotlight Diagnostic Server][enterprise_backend_ds_startstop].

* Verify this new Spotlight Diagnostic Server is monitoring connections as expected.
* You will see the alarm actions showing 'uncompleted'. This is expected.

## Remove moved monitored entity files from the original Spotlight Diagnostic Server
In a federation, each monitored connection is only monitored by one Spotlight Diagnostic Server. So once you have migrated the connections to the new Spotlight Diagnostic Server and checked that everything is working as expected, remove those Monitored_Entity files from the original Spotlight Diagnostic Server Monitored_Entity folder.

## Restart the original Spotlight Diagnostic Server
See [Start and stop the Spotlight Diagnostic Server][enterprise_backend_ds_startstop].

## Federate the two Spotlight Diagnostic Servers

* See [Make (add to) a federation][enterprise_backend_federation_add].
* Set the original Spotlight Diagnostic Server as the Configuration Server. See [Configure operations][enterprise_backend_federation_cfgops].

{% include tip.html content="Open the [Alarm Action Editor][enterprise_cfgmonitor_alarmactions]. Notice how all rules now have the added condition *The Diagnostic Server is…* which points to the original Spotlight Diagnostic Server. Please adjust to suit your requirements. See [Configure Alarm Action][enterprise_cfgmonitor_alarmaction]." %}

{% include links.html %}
