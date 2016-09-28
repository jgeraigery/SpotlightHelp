---
title: ﻿Archive Destination Failed Alarm
last_updated: July 29, 2016
summary: "Spotlight raises an Archive Destination Failed alarm when at least one of the archive destinations specified for redo log files has become full."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_archivedestinationfailed.html
id:
folder: ConnectOracle
---


The reported error message may help to resolve the issue.

View the **Disks \| Archive Destinations** Page for more information.

{% include note.html content="A destination failure may also cause a Archive Critical Failure Alarm (a critical failure of the archiving process) if a MANDATORY archive destination becomes full, OR there are now fewer working destinations than the number required for successful archiving (specified by the Oracle LOG_ARCHIVE_MIN_SUCCEED_DEST parameter)." %}



{% include links.html %}
