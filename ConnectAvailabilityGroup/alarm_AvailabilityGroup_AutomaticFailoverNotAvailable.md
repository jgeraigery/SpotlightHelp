<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE task PUBLIC "-//OASIS//DTD DITA Task//EN" "../dtd/technicalContent/dtd/task.dtd">
<task id="alarm.AvailabilityGroup.AutomaticFailoverNotAvailable" xml:lang="en-us" product="AvailabilityGroup" audience="alarm">
<title>Availability Group - Failover Availability Alarm</title>
<shortdesc></shortdesc>
<taskbody>
<context>
<p>This alarm is raised under the following circumstances:</p>
<ul>
<li><p>The Availability Group cannot failover. All nodes have stopped or paused (High Alarm).</p></li>
<li><p>The Availability Group cannot failover automatically. It can failover manually but this may involve data loss (Medium Alarm).</p></li>
<li><p>The Availability Group cannot failover automatically. It can failover manually (Information Alarm).</p></li>
<li><p>The Availability Group can failover automatically but this may involve data loss (Information Alarm).</p></li>
</ul>
</context>
</taskbody>
</task>