---
title: Session Locks grid
last_updated: July 29, 2016
summary: "Shows all locks held or requested by the selected session."
sidebar: c_sqlazure_sidebar
id: SessionLocks.SessionLocksGrid
permalink: sqlazure_grid_sessionlocks.html
folder: ConnectSQLAzure
---



If a lock is one on which this session is waiting, the Status column will show it as being blocked. This column also highlights locks that are blocking other sessions.

<p>The <strong>Status</strong> column shows whether the locks have been
 <strong>granted</strong> to the session, or whether they are currently
 <strong>blocked</strong> and waiting on another session.</p>

<p>The details in this grid are:</p>

<ul>

	<li><p><strong>Lock&nbsp;Type:&nbsp;&nbsp;</strong>The
 type of the resource that is currently locked (Database, Table, Page,
 Row, Extent, etc.)</p></li>

	<li><p><strong>Mode:&nbsp;&nbsp;</strong>The
 kind of lock being applied to the resource (Shared, Exclusive, Update,
 IntentShared, IntentExclusive, etc.).</p></li>

	<li><p><strong>Status:&nbsp;&nbsp;</strong>The
 status of the lock (Blocked, Blocking, or blank (Granted)).</p></li>


	<li><p><strong>Count:&nbsp;&nbsp;</strong>The number of locks of the type specified in the Lock Type column against the database specified in the Database column from the SPID specified in the SPID column.</p></li>

	<li><p><strong>Index:&nbsp;&nbsp;</strong>The
 index being used by the current process (if any).</p></li>

	<li><p><strong>Object Name:&nbsp;&nbsp;</strong>The
 object that is currently locked.</p></li>
</ul>


{% include links.html %}
