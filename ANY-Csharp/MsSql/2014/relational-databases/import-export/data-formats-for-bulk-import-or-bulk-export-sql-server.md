---
title: "Data Formats for Bulk Import or Bulk Export (SQL Server) | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: data-movement
ms.topic: conceptual
helpviewer_keywords: 
  - "data formats [SQL Server], choosing"
  - "bulk importing [SQL Server], data formats"
ms.assetid: 73fe6741-9437-4b26-b030-28b863e74399
author: MashaMSFT
ms.author: mathoma
manager: craigg
---
# Data Formats for Bulk Import or Bulk Export (SQL Server)
  [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] can accept data in character data format or native binary data format. Use character format when you move data between [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] and another application (such as [!INCLUDE[msCoName](../../includes/msconame-md.md)] Excel) or another database server (such as Oracle or [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)]). You can use native format only when you transfer data between instances of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)].  
  
 **In this Topic:**  
  
-   [Data Formats for Bulk Import or Export](#ComponentsAndConcepts)  
  
-   [Related Tasks](#RelatedTasks)  
  
##  <a name="ComponentsAndConcepts"></a> Data Formats for Bulk Import or Export  
 The following table indicates what data format is generally appropriate to use depending on how the data is represented and the source or target of the operation.  
  
|Operation|Native|Unicode native|Character|Unicode character|  
|---------------|------------|--------------------|---------------|-----------------------|  
|Bulk transfers of data between multiple instances of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] by using a data file that does not contain any extended or double-byte character set (DBCS) characters. Unless a format file is used, these tables must be identically defined.|Yes<sup>1</sup>|-|-|-|  
|For `sql_variant` columns, use of native data format is best, because native data format preserves the metadata for each `sql_variant` value, unlike character or Unicode formats.|Yes|-|-|-|  
|Bulk transfers of data between multiple instances of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] by using a data file that contains extended or DBCS characters.|-|Yes|-|-|  
|Bulk import of data from a text file that is generated by another program.|-|-|Yes|-|  
|Bulk export of data to a text file that is to be used in another program.|-|-|Yes|-|  
|Bulk transfers of data between multiple instances of [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] by using a data file that contains Unicode data and does not contain any extended or DBCS characters.|-|-|-|Yes|  
  
 <sup>1</sup> Fastest method for the bulk export of data from [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] when using **bcp**.  
  
##  <a name="RelatedTasks"></a> Related Tasks  
  
-   [Use Native Format to Import or Export Data &#40;SQL Server&#41;](use-native-format-to-import-or-export-data-sql-server.md)  
  
-   [Use Character Format to Import or Export Data &#40;SQL Server&#41;](use-character-format-to-import-or-export-data-sql-server.md)  
  
-   [Use Unicode Native Format to Import or Export Data &#40;SQL Server&#41;](use-unicode-native-format-to-import-or-export-data-sql-server.md)  
  
-   [Use Unicode Character Format to Import or Export Data &#40;SQL Server&#41;](use-unicode-character-format-to-import-or-export-data-sql-server.md)  
  
-   [Import Native and Character Format Data from Earlier Versions of SQL Server](import-native-and-character-format-data-from-earlier-versions-of-sql-server.md)  
  
## See Also  
 [Data Types &#40;Transact-SQL&#41;](/sql/t-sql/data-types/data-types-transact-sql)   
 [Specify Data Formats for Compatibility when Using bcp &#40;SQL Server&#41;](specify-data-formats-for-compatibility-when-using-bcp-sql-server.md)  
  
  
