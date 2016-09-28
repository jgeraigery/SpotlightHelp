---
title: ﻿Archive Destination Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight raises an Archive Destination Failure alarm when at least one of the archive destinations specified for redo log files is about to become full."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_archivedestinationfailure.html
id:
folder: ConnectOracle
---


When you see this alarm, you should make space in the archive log destination by purging it, or by backing it up to an offline medium.

{% include note.html content="A destination failure may also cause a Archive Critical Failure Alarm (a critical failure of the archiving process) if a MANDATORY archive destination becomes full, OR there are now fewer working destinations than the number required for successful archiving (specified by the Oracle LOG_ARCHIVE_MIN_SUCCEED_DEST parameter)." %}


## Suggestions for improving the archiving process

* Increase the number and/or size of the online redo log files.
* Evaluate the checkpoint interval and frequency.
* Evaluate the number of archive destinations.
* Add multiple archiver processes.

## About archiving

Archiving is important for safeguarding database changes and for recovery. It is important to protect and back up archive files to some offsite media.

There are three primary goals when archiving redo log files:

* All online redo logs should be archived and backed up successfully.
* Archiver busy waits should be prevented.
* Recovery time should be reduced by keeping all archives on disk from the last database backup.

{% include links.html %}
