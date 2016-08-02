---
title: Data Files
last_updated: July 29, 2016
summary: "This disk shows information on the total number of data files in all databases in this SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_datafiles_disk.html
folder: ConnectSQLServer
---


<p>The disk icon will "fill up" as the total percentage of all
 <uicontrol>data files</uicontrol> in all databases increases. This is the current
 <uicontrol>reserved</uicontrol> space in all data files as a percentage of the
 <uicontrol>current size</uicontrol> of all data files.</p>

<p>Note that all figures in the disk icons are accumulated over all databases
 so that a <uicontrol>Percentage Used</uicontrol> figure of around 0% does not
 necessarily mean that all databases have plenty of space left. Also, some
 files may be configured to <uicontrol>AutoGrow</uicontrol>, so if this figure
 is approaching 100% it does not necessarily mean you are almost out of
 space. The <uicontrol>Fixed File Used</uicontrol> or the <uicontrol>Dynamic File Growths Remaining</uicontrol> alarm is raised when any database is running out of space.</p>

<p>This disk also contains text that shows:</p>
<ul>
	<li><p>The total number of <uicontrol>file groups</uicontrol> in all databases in the SQL Server.</p></li>
	<li><p>The total number of <uicontrol>data files</uicontrol> in all databases in the SQL Server.</p></li>
	<li><p>The total size of all <uicontrol>data files</uicontrol> in all databases in the SQL Server.</p></li>
	<li><p>The percentage used of all <uicontrol>data files</uicontrol> in all databases in the SQL Server.</p></li>
</ul>

{% include links.html %}
