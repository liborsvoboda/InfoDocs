---
title: "XML data in SQL Server"
description: "Describes how to work with XML data retrieved from SQL Server."
ms.date: "08/15/2019"
ms.assetid: 9849d319-f518-4e3d-a7cd-f8fdcaaa1d4d
ms.prod: sql
ms.prod_service: connectivity
ms.technology: connectivity
ms.topic: conceptual
author: rothja
ms.author: jroth
ms.reviewer: v-kaywon
---
# XML data in SQL Server

[!INCLUDE[Driver_ADONET_Download](../../../includes/driver_adonet_download.md)]

SQL Server exposes the functionality of SQLXML inside the .NET. Developers can write applications that access XML data from an instance of SQL Server, bring the data into the .NET environment, process the data, and send the updates back to SQL Server. XML data can be used in several ways in SQL Server, including data storage, and as parameter values for retrieving data. The **SqlXml** class in the .NET provides the client-side support for working with data stored in an XML column within SQL Server. For more information, see "SQLXML Managed Classes" in SQL Server Books Online.  
  
## In this section  
[SQL XML column values](sql-xml-column-values.md)  
Demonstrates how to retrieve and work with XML data retrieved from SQL Server.  
  
[Specifying XML values as parameters](specify-xml-values-parameters.md)  
Demonstrates how to pass XML data as a parameter to a command.  
  
## Next steps
- [SQL Server and ADO.NET](index.md)
