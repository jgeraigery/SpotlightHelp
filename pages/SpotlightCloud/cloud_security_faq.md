---
title: Security and Data Handling
summary: ""
sidebar: p_cloud_sidebar
permalink: cloud_security_faq.html
folder: SpotlightCloud
toc: false
---


<div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">What data are we sending?</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse noCrossRef">
                            <div class="panel-body">
                            Any user of various Dell Software products can opt-in to send system configuration and performance metrics from their SQL Server or Oracle environment to SpotlightEssentials.com. Data is collected and then sent periodically. Once it's uploaded we store it for analysis and consumption by the end user. From the data and subsequent analysis SpotlightEssentials.com is able to generate a picture of your systems health and performance. The actual source of the data that these products send is documented below in Appendix A.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">How are we sending the data?</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse noCrossRef">
                            <div class="panel-body">
                            The data is sent from the Spotlight on SQL Server Enterprise, Spotlight on Oracle, Toad for SQL Server, Toad for Oracle and Spotlight Developer to SpotlightEssentials.com over the internet. We enforce SSL (https) on the API endpoints on the website so that all data sent to us is encrypted.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">What encryption algorithms/levels/technologies are we using to transmit and store data?</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse noCrossRef">
                            <div class="panel-body">
                            The data is transmitted from the Spotight Diagnostic Server to the Spotlight Cloud and from Spotlight Cloud to the web browser over SSL via https. Data at rest is encrypted using TripleDES. We are also going to implement ‘encrypt at rest’ for SQL queries and query plans: [https://docs.microsoft.com/en-us/azure/storage/storage-service-encryption](https://docs.microsoft.com/en-us/azure/storage/storage-service-encryption)
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">How is the data stored in SpotlightEssentials.com?</a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">
                            When we store your data at SpotlightEssentials.com, your data is uploaded as an XML (Atom feed), or JSON object and it is stored in Microsoft's Azure Cloud Platform. The datacenter we currently use is in the north west of the United States of America. This data may be geo-replicated to other datacenters within the United States. The raw data that is uploaded is kept in the blob store and is encrypted at rest. Processed data that is non-numeric (for example SQL text and plans (extracted from the uploaded data)) are encrypted at rest. This is done so that if our storage account(s) in the datacenter get compromised, none of the data is readable.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">How are users authenticated on the Spotlight website?</a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body">
                            Following registration with Spotlight each user is assigned a unique user name and password. Users are required to enter these credentials over an SSL (https) connection to login to the site.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSix">How are users authenticated when using the Spotlight Mobile App?</a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body">
                            Following registration on the Spotlight website each user is assigned a unique user name and password, or if using a Windows device, a unique user token and password. Users are required to enter these credentials over an SSL connection to sign in to the Spotlight Mobile App.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">Where can I find security and compliance information on the Windows Azure Platform?</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse">
                            <div class="panel-body">
                            The best place to go is the Windows Azure site itself.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseEight">What information do we store in the cloud about the mobile devices themselves that are accessing Spot Essentials? Do we have device type, UID, location, etc…?</a>
                            </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse">
                            <div class="panel-body">
                            Only mobile devices that have elected to receive “push notifications” from Spotlight are “identified” and recorded. For these devices we store:
                            <ul>
                            <li>The generic type of device: i.e. “iOS” or “Android”</li>
                            <li>A unique identifier. On Android it is the IMEI for GSM and the MEID or ESN for CDMA phones. On Apple it is an identifier that’s unique to Quest and unable to be used more broadly in identifying the device)</li>
                            </ul>
                            These two pieces of information are stored against the Spotlight Cloud user account (i.e. their email address)                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseNine">What is the volume of data (per monitored instance) that can be expected to be transmitted under normal usage. A range of data is fine. Assume the customer is using both “Mobile Monitoring” and “Health Check” data, although a breakdown of Mobile Monitor vs. Health Check would also be nice.</a>
                            </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse">
                            <div class="panel-body">
                            For just SQL Server instances (not including OS etc.) we did some analysis of just the uploaded and stored data for the SQL Server procedures - on average (sample size of 1000 SQL Server connections), the total size of compressed data per instance per day in Azure approximately 43Mb/day. Now, the Health Check data as a percentage of this was roughly 5%. Given that this is a snapshot from today, and with the inclusion of uploads of data from more procedures and SQL plans in future releases, this average will increase.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTen">Can we provide to the customer audit logs of user access and what has been done? I know we do not provide this directly via the site, however if they request information, can we supply it? For example, DBA leaves the company but they forget to remove the account from an organization, can we provide a report showing them whether that user has logged in over the past N days/weeks/months?</a>
                            </h4>
                        </div>
                        <div id="collapseTen" class="panel-collapse collapse">
                            <div class="panel-body">
                            Web logs for a particular user can be provided.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">Have we ever been asked to provide a SSAE 16 or SAS 70 report to show security compliance?</a>
                            </h4>
                        </div>
                        <div id="collapseEleven" class="panel-collapse collapse">
                            <div class="panel-body">                            ##
                            Not specifically however we’ve been asked to supply answers to a “Cloud Security Alliance” Risk Assessment - a subset of the answers to these questions will be published shortly on the Spotlight Cloud website.
                            https://cloudsecurityalliance.org/group/consensus-assessments/
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="noCrossRef accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwelve">Do we guarantee that stored data does not leave the US? The documentation on Spot Essentials says this, but wanted to confirm that geo replication outside of the US does not happen.</a>
                            </h4>
                        </div>
                        <div id="collapseTwelve" class="panel-collapse collapse">
                            <div class="panel-body">
                            The data at rest is stored in the US. For those Azure storage accounts being used with geo-replication, the replication is to another US site.
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
</div>

{% include links.html %}
