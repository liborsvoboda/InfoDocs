---
title: "SQL XML column values"
description: "Demonstrates how to retrieve and work with XML data retrieved from SQL Server."
ms.date: "08/15/2019"
dev_langs: 
  - "csharp"
ms.assetid: d97ce4da-f09c-4d1e-85b7-a0ccedd7246a
ms.prod: sql
ms.prod_service: connectivity
ms.technology: connectivity
ms.topic: conceptual
author: rothja
ms.author: jroth
ms.reviewer: v-kaywon
---
# SQL XML column values

[!INCLUDE[Driver_ADONET_Download](../../../includes/driver_adonet_download.md)]

SQL Server supports the `xml` data type, and developers can retrieve result sets including this type using standard behavior of the <xref:Microsoft.Data.SqlClient.SqlCommand> class. An `xml` column can be retrieved just as any column is retrieved (into a <xref:Microsoft.Data.SqlClient.SqlDataReader>, for example) but if you want to work with the content of the column as XML, you must use an <xref:System.Xml.XmlReader>.  
  
## Example  
The following console application selects two rows, each containing an `xml` column, from the **Sales.Store** table in the **AdventureWorks** database to a <xref:Microsoft.Data.SqlClient.SqlDataReader> instance. For each row, the value of the `xml` column is read using the <xref:Microsoft.Data.SqlClient.SqlDataReader.GetSqlXml%2A> method of <xref:Microsoft.Data.SqlClient.SqlDataReader>. The value is stored in an <xref:System.Xml.XmlReader>. Note that you must use <xref:Microsoft.Data.SqlClient.SqlDataReader.GetSqlXml%2A> rather than the <xref:System.Data.IDataRecord.GetValue%2A> method if you want to set the contents to a <xref:System.Data.SqlTypes.SqlXml> variable; <xref:System.Data.IDataRecord.GetValue%2A> returns the value of the `xml` column as a string.  
  
> [!NOTE]
>  The **AdventureWorks** sample database is not installed by default when you install SQL Server. You can install it by running SQL Server Setup.  
  
[!code-csharp [SqlDataReader_GetSqlXml#1](~/../sqlclient/doc/samples/SqlDataReader_GetSqlXml.cs#1)]
  
## Next steps
- <xref:System.Data.SqlTypes.SqlXml>
- [XML data in SQL Server](xml-data-sql-server.md)
