---
title: "Create a Table for Storing FILESTREAM Data | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: filestream
ms.topic: conceptual
helpviewer_keywords: 
  - "FILESTREAM [SQL Server], table storage"
ms.assetid: 029c3059-5c83-43e2-a859-9027031b7de1
author: MikeRayMSFT
ms.author: mikeray
manager: craigg
---
# Create a Table for Storing FILESTREAM Data
  This topic shows how to create a table for storing FILESTREAM data.  
  
 When the database has a FILESTREAM filegroup, you can create or modify tables to store FILESTREAM data. To specify that a column contains FILESTREAM data, you create a `varbinary(max)` column and add the FILESTREAM attribute.  
  
### To create a table to store FILESTREAM data  
  
1.  In [!INCLUDE[ssManStudioFull](../../includes/ssmanstudiofull-md.md)], click **New Query** to display the Query Editor.  
  
2.  Copy the [!INCLUDE[tsql](../../includes/tsql-md.md)] code from the following example into the Query Editor. This [!INCLUDE[tsql](../../includes/tsql-md.md)] code creates a FILESTREAM-enabled table called Records.  
  
3.  To create the table, click **Execute**.  
  
## Example  
 The following code example shows how to create a table that is named `Records`. The `Id` column is a `ROWGUIDCOL` column and is required to use FILESTREAM data with Win32 APIs. The `SerialNumber` column is a `UNIQUE INTEGER`. The `Chart` column is a `FILESTREAM` column and is used to store the `Chart` in the file system.  
  
> [!NOTE]  
>  This example refers to the Archive database that is created in [Create a FILESTREAM-Enabled Database](create-a-filestream-enabled-database.md).  
  
 [!code-sql[FILESTREAM#FS_CreateTable](../../snippets/tsql/SQL15/tsql/filestream/transact-sql/filestream.sql#fs_createtable)]  
  
## See Also  
 [CREATE TABLE &#40;Transact-SQL&#41;](/sql/t-sql/statements/create-table-transact-sql)   
 [ALTER TABLE &#40;Transact-SQL&#41;](/sql/t-sql/statements/alter-table-transact-sql)  
  
  
