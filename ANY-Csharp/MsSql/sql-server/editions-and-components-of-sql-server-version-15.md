---
title: "Editions and supported features of SQL Server 2019 | Microsoft Docs"
ms.custom: ""
ms.date: 11/04/2019
ms.prod: sql
ms.reviewer: ""
ms.technology: install
ms.topic: conceptual
helpviewer_keywords:
  - "Enterprise Edition [SQL Server]"
  - "Developer Edition [SQL Server]"
  - "32-bit vs. 64-bit editions [SQL Server]"
  - "default components"
  - "Workgroup Edition [SQL Server]"
  - "Internet servers [SQL Server]"
  - "installing SQL Server, components"
  - "Setup [SQL Server], components"
  - "SQL Server, editions"
  - "SQL Server, components"
  - "client/server applications [SQL Server]"
  - "editions [SQL Server]"
  - "versions [SQL Server]"
  - "Setup [SQL Server], editions"
  - "SQL Server Installation Wizard"
  - "components [SQL Server]"
  - "Standard Edition [SQL Server]"
  - "64-bit edition [SQL Server]"
  - "IIS [SQL Server]"
  - "installing SQL Server, editions"
  - "editions [SQL Server], about edition options"
  - "Setup [SQL Server]"
ms.assetid:
author: "MikeRayMSFT"
ms.author: "mikeray"
manager: rothj
monikerRange: ">= sql-server-ver15 || = sqlallproducts-allversions"
---
# Editions and supported features of [!INCLUDE[sssqlv15-md](../includes/sssqlv15-md.md)]

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx](../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

This topic provides details of features supported by the various editions of [!INCLUDE[sssqlv15-md](../includes/sssqlv15-md.md)].

For information about older versions, see:

* [SQL Server 2017](editions-and-components-of-sql-server-2017.md)
* [SQL Server 2016](editions-and-components-of-sql-server-2016.md)
* [SQL Server 2014](https://docs.microsoft.com/sql/getting-started/features-supported-by-the-editions-of-sql-server-2014)

Installation requirements vary based on your application needs. The different editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] accommodate the unique performance, runtime, and price requirements of organizations and individuals. The [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] components that you install also depend on your specific requirements. The following sections help you understand how to make the best choice among the editions and components available in [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)].

The [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Evaluation edition is available for a 180-day trial period.

For the latest release notes and what's new information, see the following:

* [[!INCLUDE[sssqlv15-md](../includes/sssqlv15-md.md)] release notes](../sql-server/sql-server-version-15-release-notes.md)
* [What's new in [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] 2019](../sql-server/what-s-new-in-sql-server-ver15.md)

### Try [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]!

>**[Download [!INCLUDE[sssqlv15-md](../includes/sssqlv15-md.md)] from the Evaluation Center](https://www.microsoft.com//evalcenter/evaluate-sql-server)**

## [!INCLUDE[ssNoVersion](../includes/ssNoVersion-md.md)] editions
The following table describes the editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)].

|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] edition|Definition|
|---------------------------------------|----------------|
|Enterprise|The premium offering, [!INCLUDE[ssNoVersion](../includes/ssNoVersion-md.md)] Enterprise edition delivers comprehensive high-end datacenter capabilities with blazing-fast performance, unlimited virtualization<sup>1</sup>, and end-to-end business intelligence - enabling high service levels for mission-critical workloads and end-user access to data insights.|
|Standard|[!INCLUDE[ssNoVersion](../includes/ssNoVersion-md.md)] Standard edition delivers basic data management and business intelligence database for departments and small organizations to run their applications and supports common development tools for on-premises and cloud - enabling effective database management with minimal IT resources.|
|Web|[!INCLUDE[ssNoVersion](../includes/ssNoVersion-md.md)] Web edition is a low total-cost-of-ownership option for Web hosters and Web VAPs to provide scalability, affordability, and manageability capabilities for small to large-scale Web properties.|
|Developer|[!INCLUDE[ssNoVersion](../includes/ssNoVersion-md.md)] Developer edition lets developers build any kind of application on top of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. It includes all the functionality of Enterprise edition, but is licensed for use as a development and test system, not as a production server. [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Developer is an ideal choice for people who build and test applications.|
|Express editions|Express edition is the entry-level, free database and is ideal for learning and building desktop and small server data-driven applications. It is the best choice for independent software vendors, developers, and hobbyists building client applications. If you need more advanced database features, [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Express can be seamlessly upgraded to other higher end versions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Express LocalDB is a lightweight version of Express that has all of its programmability features, runs in user mode and has a fast, zero-configuration installation and a short list of prerequisites.|

<sup>1</sup>
Unlimited virtualization is available on Enterprise Edition for customers with [Software Assurance](https://www.microsoft.com/licensing/licensing-programs/software-assurance-default). Deployments must comply with the licensing guide. For more information, see our pricing and licensing page.

## Using [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] with client/server applications

You can install just the [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] client components on a computer that is running client/server applications that connect directly to an instance of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. A client components installation is also a good option if you administer an instance of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] on a database server, or if you plan to develop [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] applications.

The client tools option installs the following [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] features: backward compatibility components, [!INCLUDE[ssBIDevStudio](../includes/ssbidevstudio-md.md)], connectivity components, management tools, software development kit, and [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Books Online components. For more information, see  [Install [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../database-engine/install-windows/install-sql-server.md).

### Running with IIS

On an internet server, such as a server that is running Internet Information Services (IIS), you will typically install the [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] client tools. Client tools include the client connectivity components used by an application connecting to an instance of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)].

>[!NOTE]
>Although you can install an instance of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] on a computer that is running IIS, this is typically done only for small Web sites that have a single server computer. Most Web sites have their middle-tier IIS systems on one server or a cluster of servers, and their databases on a separate server or federation of servers.

## Deciding among [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] components

Use the Feature Selection page of the [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Installation Wizard to select the components to include in an installation of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. By default, none of the features in the tree are selected.

Use the information in the following tables to determine the set of features that best fits your needs.

|Server components|Description|
|-----------------------|-----------------|
|[!INCLUDE[ssDEnoversion](../includes/ssdenoversion-md.md)]|[!INCLUDE[ssDEnoversion](../includes/ssdenoversion-md.md)] includes the [!INCLUDE[ssDE](../includes/ssde-md.md)], the core service for storing, processing, and securing data, replication, full-text search, tools for managing relational and XML data, in database analytics integration, and PolyBase integration for access to Hadoop and other heterogeneous data sources, and Machine Learning Services to run Python and R scripts with relational data.|
|[!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)]|[!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)] includes the tools for creating and managing online analytical processing (OLAP) and data mining applications.|
|[!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)]|[!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)] includes server and client components for creating, managing, and deploying tabular, matrix, graphical, and free-form reports. [!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)] is also an extensible platform that you can use to develop report applications.|
|[!INCLUDE[ssISnoversion](../includes/ssisnoversion-md.md)]|[!INCLUDE[ssISnoversion](../includes/ssisnoversion-md.md)] is a set of graphical tools and programmable objects for moving, copying, and transforming data. It also includes the [!INCLUDE[ssDQSnoversion](../includes/ssdqsnoversion-md.md)] (DQS) component for [!INCLUDE[ssISnoversion](../includes/ssisnoversion-md.md)].|
|[!INCLUDE[ssMDSshort](../includes/ssmdsshort-md.md)]|[!INCLUDE[ssMDSshort](../includes/ssmdsshort-md.md)] (MDS) is the [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] solution for master data management. MDS can be configured to manage any domain (products, customers, accounts) and includes hierarchies, granular security, transactions, data versioning, and business rules, as well as an [!INCLUDE[ssMDSXLS](../includes/ssmdsxls-md.md)] that can be used to manage data.|
|Machine Learning Services (In-Database)|Machine Learning Services (In-Database) supports distributed, scalable machine learning solutions using enterprise data sources. In [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] 2016, the R language was supported. [!INCLUDE[sssqlv15-md](../includes/sssqlv15-md.md)] supports R and Python.|
|Machine Learning Server (Standalone)|Machine Learning Server (Standalone) supports deployment of distributed, scalable machine learning solutions on multiple platforms and using multiple enterprise data sources, including Linux and Hadoop. In [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] 2016, the R language was supported. [!INCLUDE[sssqlv15-md](../includes/sssqlv15-md.md)] supports R and Python.|

|Management tools|Description|
|----------------------|-----------------|
|[!INCLUDE[ssManStudioFull](../includes/ssmanstudiofull-md.md)]|[!INCLUDE[ssManStudioFull](../includes/ssmanstudiofull-md.md)] (SSMS) is an integrated environment to access, configure, manage, administer, and develop components of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. SSMS lets developers and administrators of all skill levels use [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]. The latest edition of SSMS updates SMO, which includes the S[QL Assessment API](../sql-assessment-api/sql-assessment-api-overview.md).<br /><br/> Download and install <br />[!INCLUDE[ssManStudio](../includes/ssmanstudio-md.md)] from  [Download [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Management Studio](https://msdn.microsoft.com/library/mt238290.aspx)|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Configuration Manager|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Configuration Manager provides basic configuration management for [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] services, server protocols, client protocols, and client aliases.|
|[!INCLUDE[ssSqlProfiler](../includes/sssqlprofiler-md.md)]|[!INCLUDE[ssSqlProfiler](../includes/sssqlprofiler-md.md)] provides a graphical user interface to monitor an instance of the [!INCLUDE[ssDE](../includes/ssde-md.md)] or [!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)].|
|[!INCLUDE[ssDE](../includes/ssde-md.md)] Tuning Advisor|[!INCLUDE[ssDE](../includes/ssde-md.md)] Tuning Advisor helps create optimal sets of indexes, indexed views, and partitions.|
|Data Quality Client|Provides a highly simple and intuitive graphical user interface to connect to the DQS server, and perform data cleansing operations. It also allows you to centrally monitor various activities performed during the data cleansing operation.|
|[!INCLUDE[ssBIDevStudio](../includes/ssbidevstudio-md.md)]|[!INCLUDE[ssBIDevStudio](../includes/ssbidevstudio-md.md)] provides an IDE for building solutions for the Business Intelligence components: [!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)], [!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)], and [!INCLUDE[ssISnoversion](../includes/ssisnoversion-md.md)].<br /><br /> (Formerly called Business Intelligence Development Studio).<br /><br /> [!INCLUDE[ssBIDevStudio](../includes/ssbidevstudio-md.md)] also includes "Database Projects", which provides an integrated environment for database developers to carry out all their database design work for any [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] platform (both on and off premise) within Visual Studio. Database developers can use the enhanced Server Explorer in Visual Studio to easily create or edit database objects and data, or execute queries.|
|Connectivity Components|Installs components for communication between clients and servers, and network libraries for DB-Library, ODBC, and OLE DB.|

|Documentation|Description|
|-------------------|-----------------|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Books Online|Core documentation for [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)].|

**Developer and Evaluation Editions**
For features supported by Developer and Evaluation editions, see features listed for the [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Enterprise Edition in the tables below.

The Developer edition continues to support only 1 client for [[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Distributed Replay](../tools/distributed-replay/sql-server-distributed-replay.md).

##  <a name="Cross-BoxScaleLimits"></a> Scale limits

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Maximum compute capacity used by a single instance - [!INCLUDE[ssDEnoversion](../includes/ssdenoversion-md.md)]<sup>1</sup>|Operating system maximum|Limited to lesser of 4 sockets or 24 cores|Limited to lesser of 4 sockets or 16 cores|Limited to lesser of 1 socket or 4 cores|Limited to lesser of 1 socket or 4 cores|
|Maximum compute capacity used by a single instance - [!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)] or [!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)]|Operating system maximum|Limited to lesser of 4 sockets or 24 cores|Limited to lesser of 4 sockets or 16 cores|Limited to lesser of 1 socket or 4 cores|Limited to lesser of 1 socket or 4 cores|
|Maximum memory for buffer pool per instance of [!INCLUDE[ssDEnoversion](../includes/ssdenoversion-md.md)]|Operating System Maximum|128 GB|64 GB|1410 MB|1410 MB|
|Maximum memory for Columnstore segment cache per instance of [!INCLUDE[ssDEnoversion](../includes/ssdenoversion-md.md)]|Unlimited memory| 32 GB| 16 GB| 352 MB| 352 MB|
|Maximum memory-optimized data size per database in [!INCLUDE[ssDEnoversion](../includes/ssdenoversion-md.md)]|Unlimited memory| 32 GB| 16 GB| 352 MB| 352 MB|
|Maximum memory utilized per instance of [!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)]|Operating System Maximum|Tabular: 16 GB<br /><br /> MOLAP: 64 GB|N/A|N/A|N/A|
|Maximum memory utilized per instance of [!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)]|Operating System Maximum|64 GB|64 GB|4 GB|N/A|
|Maximum relational database size|524 PB|524 PB|524 PB|10 GB|10 GB|

<sup>1</sup> Enterprise Edition with Server + Client Access License (CAL) based licensing (not available for new agreements) is limited to a maximum of 20 cores per [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] instance. There are no limits under the Core-based Server Licensing model. For more information, see [Compute Capacity Limits by Edition of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../sql-server/compute-capacity-limits-by-edition-of-sql-server.md).

##  <a name="RDBMSHA"></a> RDBMS high availability

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Server core support <sup>1</sup>|Yes|Yes|Yes|Yes|Yes|
|Log shipping|Yes|Yes|Yes|No|No|
|Database mirroring|Yes|Yes<br /><br /> Full safety only|Witness only|Witness only|Witness only|
|Backup compression|Yes|Yes|No|No|No|
|Database snapshot|Yes|Yes|Yes|Yes|Yes|
|Always On failover cluster instances<sup>2</sup>|Yes|Yes|No|No|No|
|Always On availability groups<sup>3</sup>|Yes|No|No|No|No|
|Basic availability groups <sup>4</sup>|No|Yes|No|No|No|
|Automatic read write connection re-routing |Yes|No|No|No|No|
|Online page and file restore|Yes|No|No|No|No|
|Online index create and rebuild|Yes|No|No|No|No|
|Resumable online index rebuilds|Yes|No|No|No|No|
|Online schema change|Yes|No|No|No|No|
|Fast recovery|Yes|No|No|No|No|
|Accelerated database recovery|Yes|Yes|No|No|No|
|Mirrored backups|Yes|No|No|No|No|
|Hot add memory and CPU|Yes|No|No|No|No|
|Database recovery advisor|Yes|Yes|Yes|Yes|Yes|
|Encrypted backup|Yes|Yes|No|No|No|
|Hybrid backup to Windows Azure (backup to URL)|Yes|Yes|No|No|No|
|Cluster-less availability group|Yes|Yes|No|No|No|
|Failover servers for disaster recovery <sup>5</sup>|Yes|Yes|No|No|No|
|Failover servers for high availability <sup>5</sup>|Yes|Yes|No|No|No|
|Failover servers for disaster recovery in Azure <sup>5</sup>|Yes|Yes|No|No|No|

<sup>1</sup> For more information on installing [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] on Server Core,  see [Install [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] on Server Core](../database-engine/install-windows/install-sql-server-on-server-core.md).

<sup>2</sup> On Enterprise Edition, the number of nodes is the operating system maximum. On Standard edition there is support for two nodes.

<sup>3</sup> On Enterprise Edition, provides support for up to 8 secondary replicas - including 5 synchronous secondary replicas.

<sup>4</sup> Standard Edition supports basic availability groups. A basic availability group supports two replicas, with one database. For more information about basic availability groups, see [Basic Availability Groups](../database-engine/availability-groups/windows/basic-availability-groups-always-on-availability-groups.md).

<sup>5</sup> [Software assurance](https://www.microsoft.com/licensing/licensing-programs/software-assurance-default) required.

##  <a name="RDBMSSP"></a> RDBMS scalability and performance

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Columnstore <sup>1</sup>|Yes|Yes|Yes|Yes|Yes|
|Large object binaries in clustered columnstore indexes|Yes|Yes|Yes|Yes|Yes|
|Online non-clustered columnstore index rebuild|Yes|No|No|No|No|
|In-Memory Database: In-Memory OLTP <sup>1</sup>|Yes|Yes|Yes|Yes, <sup>2</sup>|Yes|
|In-Memory Database: hybrid buffer pool|Yes|Yes|No|No|No|
|In-Memory Database: memory-optimized tempdb metadata|Yes|No|No|No|No|
|In-Memory Database: persistent memory support|Yes|Yes|Yes|Yes|Yes|
|Stretch database|Yes|Yes|Yes|Yes|Yes|
|Multi-instance support|50|50|50|50|50|
|Table and index partitioning|Yes|Yes|Yes|Yes|Yes|
|Data compression|Yes|Yes|Yes|Yes|Yes|
|Resource governor|Yes|No|No|No|No|
|Partitioned table parallelism|Yes|No|No|No|No|
|Multiple filestream containers|Yes|Yes|Yes|Yes|Yes|
|NUMA aware and large page memory and buffer array allocation|Yes|No|No|No|No|
|Buffer pool extension|Yes|Yes|No|No|No|
|IO resource governance|Yes|No|No|No|No|
|Read-ahead|Yes|No|No|No|No|
|Advanced scanning|Yes|No|No|No|No|
|Delayed durability|Yes|Yes|Yes|Yes|Yes|
|Intelligent Database: automatic tuning|Yes|No|No|No|No|
|Intelligent Database: batch mode for row store|Yes|No|No|No|No|
|Intelligent Database: row mode memory grant feedback|Yes|No|No|No|No|
|Intelligent Database: approximate count distinct|Yes|Yes|Yes|Yes|Yes|
|Intelligent Database: table variable deferred compilation|Yes|Yes|Yes|Yes|Yes|
|Intelligent Database: scalar UDF inlining|Yes|Yes|Yes|Yes|Yes|
|Batch mode adaptive joins|Yes|No|No|No|No|
|Batch mode memory grant feedback|Yes|No|No|No|No|
|Interleaved execution for multi-statement table valued functions|Yes|Yes|Yes|Yes|Yes|
|Bulk insert improvements|Yes|Yes|Yes|Yes|Yes|

<sup>1</sup> In-Memory OLTP data size and Columnstore segment cache are limited to the amount of memory specified by edition in the Scale Limits section. The max degrees of parallelism is limited. The degrees of process parallelism (DOP) for an index build is limited to 2 DOP for the Standard Edition and 1 DOP for the Web and Express Editions. This refers to columnstore indexes created over disk-based tables and memory-optimized tables.

<sup>2</sup> This feature is not included in the LocalDB installation option.

##  <a name="RDBMSS"></a> RDBMS security

|Feature|Enterprise|Standard|Web|Express|Express with Advanced Services|
|-------------|----------------|--------------|---------|-------------|------------------------------------|
|Row-level security|Yes|Yes|Yes|Yes|Yes|
|Always Encrypted|Yes|Yes|Yes|Yes|Yes|
|Always Encrypted with Secure Enclaves|Yes|Yes|Yes|Yes|Yes|
|Dynamic data masking|Yes|Yes|Yes|Yes|Yes|
|Server audit|Yes|Yes|Yes|Yes|Yes|
|Database audit|Yes|Yes|Yes|Yes|Yes|
|Transparent database encryption|Yes|Yes|No|No|No|
|Extensible key management|Yes|Yes|No|No|No|
|User-defined roles|Yes|Yes|Yes|Yes|Yes|
|Contained databases|Yes|Yes|Yes|Yes|Yes|
|Encryption for backups|Yes|Yes|No|No|No|
|Data classification and auditing|Yes|Yes|Yes|Yes|Yes|

##  <a name="Replication"></a> Replication

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Heterogeneous subscribers|Yes|Yes|No|No|No|
|Merge replication|Yes|Yes|Yes (Subscriber only)|Yes (Subscriber only)|Yes (Subscriber only)|
|Oracle publishing|Yes|No|No|No|No|
|Peer to peer transactional replication|Yes|No|No|No|No|
|Snapshot replication|Yes|Yes|Yes (Subscriber only)|Yes (Subscriber only)|Yes (Subscriber only)|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] change tracking|Yes|Yes|Yes|Yes|Yes|
|Transactional replication|Yes|Yes|Yes (Subscriber only)|Yes (Subscriber only)|Yes (Subscriber only)|
|Transactional replication to Azure|Yes|Yes|No|No|No|
|Transactional replication updateable subscription|Yes|No|No|No|No|

##  <a name="SSMS"></a> Management tools

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|SQL Management Objects (SMO)|Yes|Yes|Yes|Yes|Yes|
|SQL Assessment API|Yes|Yes|Yes|Yes|Yes|
|SQL Vulnerability Assessment |Yes|Yes|Yes|Yes|Yes|
|SQL Configuration Manager|Yes|Yes|Yes|Yes|Yes|
|SQL CMD (Command Prompt tool)|Yes|Yes|Yes|Yes|Yes|
|Distributed Replay - Admin Tool|Yes|Yes|Yes|Yes|No|
|Distribute Replay - Client|Yes|Yes|Yes|No|No|
|Distributed Replay - Controller|Yes (Up to 16 clients)|Yes (1 client)|Yes (1 client)|No|No|
|SQL Profiler|Yes|Yes|No <sup>1</sup>|No <sup>1</sup>|No <sup>1</sup>|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Agent|Yes|Yes|Yes|No|No|
|Microsoft System Center Operations Manager Management Pack|Yes|Yes|Yes|No|No|
|Database Tuning Advisor (DTA)|Yes|Yes <sup>2</sup>|Yes <sup>2</sup>|No|No|

<sup>1</sup> [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Web, [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Express, [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Express with Tools, and [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Express with Advanced Services can be profiled using [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Standard and [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Enterprise editions.

<sup>2</sup> Tuning enabled only on Standard edition features

##  <a name="RDBMSM"></a> RDBMS manageability

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|User instances|No|No|No|Yes|Yes|
|LocalDB|No|No|No|Yes|No|
|Dedicated admin connection|Yes|Yes|Yes|Yes with trace flag|Yes with trace flag|
|SysPrep support <sup>1</sup>|Yes|Yes|Yes|Yes|Yes|
|PowerShell scripting support<sup>2</sup>|Yes|Yes|Yes|Yes|Yes|
|Support for data-tier application component operations - extract, deploy, upgrade, delete|Yes|Yes|Yes|Yes|Yes|
|Policy automation (check on schedule and change)|Yes|Yes|Yes|No|No|
|Performance data collector|Yes|Yes|Yes|No|No|
|Able to enroll as a managed instance in multi-instance management|Yes|Yes|Yes|No|No|
|Standard performance reports|Yes|Yes|Yes|No|No|
|Plan guides and plan freezing for plan guides|Yes|Yes|Yes|No|No|
|Direct query of indexed views (using NOEXPAND hint)|Yes|Yes|Yes|Yes|Yes|
|Direct query SQL Server Analysis Services|Yes|Yes|No|No|Yes|
|Automatic indexed views maintenance|Yes|Yes|Yes|No|No|
|Distributed partitioned views|Yes|No|No|No|No|
|Parallel indexed operations|Yes|No|No|No|No|
|Automatic use of indexed view by query optimizer|Yes|No|No|No|No|
|Parallel consistency check|Yes|No|No|No|No|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Utility Control Point|Yes|No|No|No|No|
|Buffer pool extension|Yes|Yes|No|No|No|
|Master instance for big data cluster|Yes|Yes|No|No|No|
|Compatibility certification|Yes|Yes|Yes|Yes|Yes|

<sup>1</sup> For more information, see [Considerations for Installing [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Using SysPrep](../database-engine/install-windows/considerations-for-installing-sql-server-using-sysprep.md).

<sup>2</sup> On Linux, PowerShell scripts are supported, from Windows computers targeting [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] on Linux.
##  <a name="DevTools"></a> Development tools

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Microsoft Visual Studio integration|Yes|Yes|Yes|Yes|Yes|
|Intellisense (Transact-SQL and MDX)|Yes|Yes|Yes|Yes|Yes|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Data Tools (SSDT)|Yes|Yes|Yes|Yes|No|
|MDX edit, debug, and design tools|Yes|Yes|No|No|No|

##  <a name="Programmability"></a> Programmability

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Basic R integration <sup>1</sup>|Yes|Yes|Yes|Yes|No|
|Advanced R integration <sup>2</sup>|Yes|No|No|No|No|
|Basic Python integration|Yes|Yes|Yes|Yes|No|
|Advanced Python integration|Yes|No|No|No|No|
|Machine Learning Server (Standalone)|Yes|No|No|No|No|
|PolyBase compute node|Yes|Yes <sup>3</sup>|Yes <sup>3</sup>|Yes <sup>3</sup>|Yes <sup>3</sup> |
|PolyBase head node <sup>4</sup>|Yes|Yes|No|No|No|
|JSON|Yes|Yes|Yes|Yes|Yes|
|Query Store|Yes|Yes|Yes|Yes|Yes|
|Temporal|Yes|Yes|Yes|Yes|Yes|
|Common Language Runtime (CLR) Integration|Yes|Yes|Yes|Yes|Yes|
|Java Language Runtime Integration|Yes|Yes|Yes|Yes|Yes|
|Native XML support|Yes|Yes|Yes|Yes|Yes|
|XML indexing|Yes|Yes|Yes|Yes|Yes|
|MERGE & UPSERT capabilities|Yes|Yes|Yes|Yes|Yes|
|FILESTREAM support|Yes|Yes|Yes|Yes|Yes|
|FileTable|Yes|Yes|Yes|Yes|Yes|
|Date and Time datatypes|Yes|Yes|Yes|Yes|Yes|
|Internationalization support|Yes|Yes|Yes|Yes|Yes|
|Full-text and semantic search|Yes|Yes|Yes|Yes|No|
|Specification of language in query|Yes|Yes|Yes|Yes|No|
|Service Broker (messaging)|Yes|Yes|No (Client only)|No (Client only)|No (Client only)|
|Transact-SQL endpoints|Yes|Yes|Yes|No|No|
|Graph|Yes|Yes|Yes|Yes|Yes|
|UTF-8 support|Yes|Yes|Yes|Yes|Yes|


<sup>1</sup> Basic integration is limited to 2 cores and in-memory data sets.

<sup>2</sup> Advanced integration can use all available cores for parallel processing of data sets at any size subject to hardware limits.

<sup>3</sup> Scale out with multiple compute nodes requires a head node.

<sup>4</sup> Prior to SQL Server 2019 PolyBase head node requires Enterprise Edition.

## <a name="IS"></a> Integration Services

For info about [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Integration Services (SSIS) features supported by the editions of [!INCLUDE[ssNoVersion_md](../includes/ssnoversion-md.md)], see [Integration Services Features Supported by the Editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../integration-services/integration-services-features-supported-by-the-editions-of-sql-server.md).

##  <a name="MDS"></a> Master Data Services
For information about the [!INCLUDE[ssMDSshort_md](../includes/ssmdsshort-md.md)] and Data Quality Services features supported by the editions of [!INCLUDE[ssNoVersion_md](../includes/ssnoversion-md.md)], see [Master Data Services and Data Quality Services Features Supported by the Editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../master-data-services/master-data-services-and-data-quality-services-features-support.md).


##  <a name="DW"></a> Data warehouse

|Feature|Enterprise|Standard|Web|Express with Advanced Services|Express|
|-------------|----------------|--------------|---------|------------------------------------|------------------------|
|Auto-generate staging and data warehouse schema|Yes|Yes|No|No|No|
|Change data capture|Yes|Yes|No|No|No|
|Star join query optimizations|Yes|No|No|No|No|
|Parallel query processing on partitioned tables and indexes|Yes|No|No|No|No|
|Global batch aggregation|Yes|No|No|No|No|

##  <a name="SSAS"></a> Analysis Services

For information about the Analysis Services features supported by the editions of [!INCLUDE[ssNoVersion_md](../includes/ssnoversion-md.md)], see [Analysis Services Features Supported by the Editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../analysis-services/analysis-services-features-supported-by-the-editions-of-sql-server-2016.md).


##  <a name="SSRS"></a> Reporting Services

For information about the Reporting Services features supported by the editions of [!INCLUDE[ssNoVersion_md](../includes/ssnoversion-md.md)], see [Reporting Services Features Supported by the Editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../reporting-services/reporting-services-features-supported-by-the-editions-of-sql-server-2016.md).

##  <a name="BIC"></a> Business intelligence clients

For information about the Business Intelligence Client features supported by the editions of [!INCLUDE[ssNoVersion_md](../includes/ssnoversion-md.md)], see [Analysis Services Features Supported by the Editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../analysis-services/analysis-services-features-supported-by-the-editions-of-sql-server-2016.md) or [Reporting Services Features Supported by the Editions of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../reporting-services/reporting-services-features-supported-by-the-editions-of-sql-server-2016.md).

##  <a name="SLS"></a> Spatial and location services

|Feature Name|Enterprise|Standard|Web|Express with Advanced Services|Express|
|------------------|----------------|--------------|---------|------------------------------------|------------------------|
|Spatial indexes|Yes|Yes|Yes|Yes|Yes|
|Planar and geodetic datatypes|Yes|Yes|Yes|Yes|Yes|
|Advanced spatial libraries|Yes|Yes|Yes|Yes|Yes|
|Import/export of industry-standard spatial data formats|Yes|Yes|Yes|Yes|Yes|

##  <a name="ADS"></a> Additional database services

|Feature Name|Enterprise|Standard|Web|Express with Advanced Services|Express|
|------------------|----------------|--------------|---------|------------------------------------|------------------------|
|[!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Migration Assistant|Yes|Yes|Yes|Yes|Yes|
|Database mail|Yes|Yes|Yes|No|No|

##  <a name="Other"></a> Other components

|Feature Name|Enterprise|Standard|Web|Express with Advanced Services|Express|
|------------------|----------------|--------------|---------|------------------------------------|------------------------|
|StreamInsight|StreamInsight Premium Edition|StreamInsight Standard Edition|StreamInsight Standard Edition|No|No|
|StreamInsight HA|StreamInsight Premium Edition|No|No|No|No|

> [![Download SSMS](https://docs.microsoft.com/analysis-services/media/download.png)](../ssms/download-sql-server-management-studio-ssms.md) **[Download the latest version of [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Management Studio](../ssms/download-sql-server-management-studio-ssms.md)**

## Next steps
[Product Specifications for [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](https://msdn.microsoft.com/library/6445fd53-6844-4170-a86b-7fe76a9f64cb)
[Installation for [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)]](../database-engine/install-windows/installation-for-sql-server-2016.md)

[!INCLUDE[get-help-options](../includes/paragraph-content/get-help-options.md)]

[!INCLUDE[contribute-to-content](../includes/paragraph-content/contribute-to-content.md)]
