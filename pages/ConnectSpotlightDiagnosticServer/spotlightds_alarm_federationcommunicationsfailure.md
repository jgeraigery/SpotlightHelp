---
title: Diagnostic Server - Federation Communications Failure Alarm
last_updated: July 29, 2016
summary: "This alarm is raised by a Spotlight Diagnostic Server in a federation when the Spotlight Diagnostic Server that raises the alarm cannot communicate with the Configuration server."
sidebar: p_spotlightds_sidebar
permalink: spotlightds_alarm_federationcommunicationsfailure.html
id: alarm_ds_federationcommunicationsfailure
folder: ConnectSpotlightDS
---


When this alarm is raised:

* The Spotlight Diagnostic Server authenticates with the Configuration server using Windows authentication over TCP port 40303.
* Verify the Windows account that the Spotlight Diagnostic Server is running under is valid in the domain of the Configuration server.


<note type="note">Spotlight Diagnostic Server in a federation poll the Configuration server for updates.</note>



{% include links.html %}
