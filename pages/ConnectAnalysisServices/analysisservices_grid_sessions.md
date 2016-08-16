---
title: Sessions grid
last_updated: July 29, 2016
summary: "The Sessions grid provides resource usage and activity information for current sessions on the server."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_grid_sessions.html
id: Activity_Sessions.SessionsGrid
folder: ConnectAnalysisServices
---

<p><b>Note:</b> All times shown in this grid are displayed as Greenwich mean time (GMT).</p>

<ul>
    <li><b>SPID:</b> The session ID.</li>		
    <li><b>Connection ID:</b> The connection identifier for the session.</li>		
<li><b>User Name:</b> The session user name.</li>		
<li><b>Current Database:</b> The name of the database that is being used by the current command execution, or the database that was used by the last command executed.</li>		
<li><b>Last Command Start Time:</b> The date and time when the last command initiated its execution.</li>		
<li><b>Last Command End Time:</b> The date and time when the last command finished its execution.</li>		
<li><b>Last Command Elapsed Time:</b> The elapsed time, in milliseconds, since the end of the last command executed.</li>		
    <li><b>Last Command:</b> The text of the current command executing or the last command executed.</li>		
<li><b>Last Command CPU Time:</b> The CPU time, in milliseconds, consumed by the last command.</li>		
    <li><b>Start Time:</b> The date and time the session started.</li>		
<li><b>Elapsed Time:</b> Elapsed time, in milliseconds, since the start of the session.</li>		
<li><b>Idle Time:</b> The idle time, in milliseconds, since the start of the session.</li>		
    <li><b>Used Memory:</b> The current size of memory used by the session in kilobytes.</li>
    <li><b>Status:</b> The activity status of the session. 0 = Idle,1 = Active, 2 = Blocked.</li>
    <li><b>Reads:</b> The accumulated number of disk reads since the start of the session.</li>
<li><b>Writes:</b> </li>
    <li><b>Reads KB:</b> The accumulated value of data read from disk, in kilobytes, since the start of the session.</li>
    <li><b>Write KB:</b> The accumulated value of data written to disk, in kilobytes, since the start of the session.</li>
    <li><b>Command Count:</b> The number of commands that started execution since the beginning of the session.</li>
<li><b>Session ID:</b> The session unique identifier, as a GUID.</li>																			
</ul>		


{% include links.html %}
