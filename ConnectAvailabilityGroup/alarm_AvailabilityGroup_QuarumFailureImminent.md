<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE task PUBLIC "-//OASIS//DTD DITA Task//EN" "../dtd/technicalContent/dtd/task.dtd">
<task id="alarm.AvailabilityGroup.QuarumFailureImminent" xml:lang="en-us" product="AvailabilityGroup" audience="alarm">
<title>Availability Group - Quorum Failure Imminent Alarm</title>
<shortdesc></shortdesc>
<taskbody>
<context>
<p>This alarm is raised under the following circumstances:</p>
<ul>
<li><p>Multiple nodes have been made unavailable. If one more node fails then the cluster (Availability Group) will be made unavailable (High Alarm).</p></li>
<li><p>If one more node fails then the cluster (Availability Group) will be made unavailable (Medium Alarm).</p></li>
<li><p>A node within the cluster is made unavailable (Low Alarm).</p></li>
<li><p>The Quorum has been forced (Information Alarm).</p></li>
</ul>
</context>
</taskbody>
</task>