---
title: What is Azure Data Studio
titleSuffix: Azure Data Studio
description: Azure Data Studio is a free, light-weight tool, that runs on Windows, macOS, and Linux, for managing SQL Server, Azure SQL Database, and Azure SQL Data Warehouse. 
ms.prod: sql
ms.technology: azure-data-studio
ms.topic: "overview"
author: "markingmyname"
ms.author: "maghan"
ms.reviewer: "alayu; sstein"
ms.custom: "seodec18, sqlfreshmay19"
ms.date: "01/15/2020"
---

# What is Azure Data Studio?

Azure Data Studio is a cross-platform database tool for data professionals using the Microsoft family of on-premises and cloud data platforms on Windows, MacOS, and Linux.

Azure Data Studio offers a modern editor experience with IntelliSense, code snippets, source control integration, and an integrated terminal. It's engineered with the data platform user in mind, with built-in charting of query result sets and customizable dashboards.

The source code for Azure Data Studio and its data providers is available on GitHub under a source code EULA that provides rights to modify and use the software, but not to redistribute it or host it in a cloud service. For more information, see [Azure Data Studio FAQ](faq.md).

**[Download and Install [!INCLUDE[name-sos](../includes/name-sos-short.md)]](download.md)**

## SQL code editor with IntelliSense

[!INCLUDE[name-sos](../includes/name-sos-short.md)] offers a modern, keyboard-focused SQL coding experience that makes your everyday tasks easier with built-in features, such as multiple tab windows, a rich SQL editor, IntelliSense, keyword completion, code snippets, code navigation, and source control integration (Git). Run on-demand SQL queries, view and save results as text, JSON, or Excel. Edit data, organize your favorite database connections, and browse database objects in a familiar object browsing experience. To learn how to use the SQL editor, see [Use the SQL editor to create database objects](tutorial-sql-editor.md).

## Smart SQL code snippets

SQL code snippets generate the proper SQL syntax to create databases, tables, views, stored procedures, users, logins, roles, and to update existing database objects. Use smart snippets to quickly create copies of your database for development or testing purposes, and to generate and execute CREATE and INSERT scripts.

[!INCLUDE[name-sos](../includes/name-sos-short.md)] also provides functionality to create custom SQL code snippets. To learn more, see [Create and use code snippets](code-snippets.md).

## Customizable Server and Database Dashboards

Create rich customizable dashboards to monitor and quickly troubleshoot performance bottlenecks in your databases. To learn about insight widgets, and database (and server) dashboards, see [Manage servers and databases with insight widgets](insight-widgets.md).

## Connection management (server groups)

Server groups provide a way to organize connection information for the servers and databases you work with. For details, see [Server groups](server-groups.md).

## Integrated Terminal

Use your favorite command-line tools (for example, Bash, PowerShell, sqlcmd, bcp, and ssh) in the Integrated Terminal window right within the [!INCLUDE[name-sos](../includes/name-sos-short.md)] user interface. To learn about the integrated terminal, see [Integrated terminal](integrated-terminal.md).

## Extensibility and extension authoring

Enhance the [!INCLUDE[name-sos](../includes/name-sos-short.md)] experience by extending the functionality of the base installation. [!INCLUDE[name-sos](../includes/name-sos-short.md)] provides extensibility points for data management activities, and support for extension authoring.

To learn about extensibility in [!INCLUDE[name-sos](../includes/name-sos-short.md)], see [Extensibility](extensibility.md).
To learn about authoring extensions, see [Extension authoring](extension-authoring.md).

## Feature comparison with SQL Server Management Studio (SSMS)

**Use Azure Data Studio if you:**

- Need to run on macOS or Linux
- Are connecting to a SQL Server 2019 big data cluster
- Spend most of your time editing or executing queries
- Need the ability to quickly chart and visualize result sets
- Can execute most administrative tasks via the integrated terminal using sqlcmd or Powershell
- Have minimal need for wizard experiences
- Don't need to do deep administrative configuration

**Use SQL Server Management Studio if you:**

- Spend most of your time on database administration tasks
- Are doing deep administrative configuration
- Are doing security management, including user management, vulnerability assessment, and configuration of security features
- Make use of the Reports for SQL Server Query Store
- Need to make use of performance tuning advisors and dashboards
- Are doing Import/Export of DACPACs
- Need access to Registered Servers and want to control SQL Server services on Windows

### Shell

|Feature|Azure Data Studio|SSMS|
|:---|:---|:---|
|Azure Sign-In|Yes|Yes|
|Dashboard|Yes||
|Extensions|Yes||
|Integrated Terminal|Yes||
|Object Explorer|Yes|Yes|
|Object Scripting|Yes|Yes|
|Project System|Yes||
|Select from Table|Yes|Yes|
|Source Code Control|Yes||
|Task Pane|Yes||
|Theming|Yes||
|Dark Mode|Yes||
|Azure Resource Explorer|Preview||
|Generate Scripts Wizard||Preview|
|Import/Export DACPAC||Yes|
|Object Properties||Preview|
|Table Designer||Yes|

### Query editor

|Feature|Azure Data Studio|SSMS|
|:---|:---|:---|
|Chart Viewer|Yes||
|Export Results to CSV, JSON, XLSX|Yes||
|IntelliSense|Yes|Yes|
|Snippets|Yes|Yes|
|Show Plan|Preview|Yes|
|Client Statistics||Yes|
|Live Query Stats||Yes|
|Query Options||Yes|
|Results to File||Yes|
|Results to Text||Yes|
|Spatial Viewer||Yes|
|SQLCMD||Yes|
|Notebooks|Yes||
|Save Query as snippet|Yes||

### Operating system support

|Feature|Azure Data Studio|SSMS|
|:---|:---|:---|
|Linux|Yes||
|macOS|Yes||
|Windows|Yes|Yes|

### Data engineering

|Feature|Azure Data Studio|SSMS|
|:---|:---|:---|
|Create External Table Wizard|Yes||
|HDFS Integration|Yes||
|Notebooks|Yes||

### Database administration

|Feature|Azure Data Studio|SSMS|
|:---|:---|:---|
|Backup / Restore|Yes|Yes|
|Big Data Cluster Support|Yes||
|Flat File Import|Preview|Yes|
|SQL Agent|Preview|Yes|
|SQL Profiler|Preview|Yes|
|Always On||Yes|
|Always Encrypted||Yes|
|Copy Data Wizard||Yes|
|Database Engine Tuning Advisor||Yes|
|Error Log Viewer||Yes|
|Maintenance Plans||Yes|
|Multi-Server Query||Yes|
|Policy-Based Management||Yes|
|PolyBase||Yes|
|Query Store||Yes|
|Registered Servers||Yes|
|Replication||Yes|
|Security Management||Yes|
|Service Broker||Yes|
|SQL Mail||Yes|
|Template Explorer||Yes|
|Vulnerability Assessment||Yes|
|XEvent Management||Yes|
|SQL Assessment API Integration||Yes|

## Next steps

- [Download and Install [!INCLUDE[name-sos](../includes/name-sos-short.md)]](download.md)
- [Connect and query SQL Server](quickstart-sql-server.md)
- [Connect and query Azure SQL Database](quickstart-sql-database.md)

[!INCLUDE[get-help-sql-tools](../includes/paragraph-content/get-help-sql-tools.md)]

[!INCLUDE[contribute-to-content](../includes/paragraph-content/contribute-to-content.md)]
