---
title: Physical Reads
summary: "This flow represents normal page reads per second."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_component_flwreads
folder: ConnectSQLAzure
---


When a connection needs a page that is not already in the Buffer Cache, SQL Azure issues an I/O request and the user
will have to wait until the page has been read before they can continue.
