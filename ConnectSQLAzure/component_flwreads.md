---
title: Physical Reads
keywords: mydoc
summary: "This flow represents normal page reads per second."
sidebar: c_sqlazure_sidebar
toc: false
permalink: /sqlazure_component_flwreads/
---


When a connection needs a page that is not already in the Buffer Cache, SQL Azure issues an I/O request and the user
will have to wait until the page has been read before they can continue.
