---
title: "Microsoft Connector for Oracle | Microsoft Docs"
ms.custom: ""
ms.date: "08/14/2019"
ms.prod: sql
ms.prod_service: "integration-services"
ms.reviewer: ""
ms.technology: integration-services
ms.topic: conceptual
author: chugugrace
ms.author: chugu
---
# Microsoft Connector for Oracle

[!INCLUDE[ssis-appliesto](../../includes/ssis-appliesto-ssvrpluslinux-asdb-asdw-xxx.md)]

Microsoft Connector for Oracle enables to export data from and load data into Oracle data source in an SSIS package.

## Version support

The following Microsoft SQL Server products are supported by Microsoft Connector for Oracle:

- Since SQL Server 2019
- SQL Server Data Tools (SSDT) since version 15.9.3

The following Oracle database versions of data source are supported:

- Oracle 10.x
- Oracle 11.x
- Oracle 12c
- Oracle 18c (without Windows Authentication support)

The Oracle database is supported on all operating systems and platforms.
> [!NOTE]
>
> Oracle client is not required for Microsoft Connector for Oracle database in SQL Server 2019.

## Installation

To install the connector for Oracle database, download and run the installer from [the latest version of Microsoft connector for Oracle](https://www.microsoft.com/download/details.aspx?id=58228). Then follow the directions in the installation wizard.

After you install the Connector, you must restart the SQL Server Integration Service to be sure that the Oracle source and destination can work correctly.

To execute SSIS package targeting SQL Server 2017 and below, in addition to **Microsoft Connector for Oracle**, you will need to install **Oracle client** and **Microsoft Connector for Oracle by Attunity** with corresponding version from below links:

- [SQL Server 2017: Microsoft Connector Version 5.0 for Oracle by Attunity](https://www.microsoft.com/download/details.aspx?id=55179)
- [SQL Server 2016: Microsoft Connector Version 4.0 for Oracle by Attunity](https://www.microsoft.com/download/details.aspx?id=52950)
- [SQL Server 2014: Microsoft Connector Version 3.0 for Oracle by Attunity](https://www.microsoft.com/download/details.aspx?id=44582)
- [SQL Server 2012: Microsoft Connector Version 2.0 for Oracle by Attunity](https://www.microsoft.com/download/details.aspx?id=29283)

## Uninstallation

You can run uninstall wizard to remove Microsoft Connector for Oracle database from SQL Server.

## Next steps

- Configure [Oracle Connection Manager](oracle-connection-manager.md).
- Configure [Oracle Source](oracle-source.md).
- Configure [Oracle Destination](oracle-destination.md).
- If you have questions, visit [TechCommunity](https://aka.ms/AA5u35j).
