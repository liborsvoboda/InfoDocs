---
title: "Generate elements for NULL values with XSINIL | Microsoft Docs"
ms.date: "05/22/2019"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: xml
ms.topic: conceptual
helpviewer_keywords: 
  - "FOR XML clause, null values"
  - "null values [SQL Server], XML"
  - "ELEMENTS directive"
  - "XSINIL parameter"
ms.assetid: 2dbc4e48-1cae-4d83-b371-3265da9687cc
author: MightyPen
ms.author: genemi
ms.custom: "seo-lt-2019"
---
# Generate Elements for NULL Values with the XSINIL Parameter

[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx-md](../../includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]

The **ELEMENTS** directive constructs XML in which each column value maps to an element in the XML. By default, if the column value is NULL, no element is added. But by specifying the optional **XSINIL** parameter on the ELEMENTS directive, you can request that an element also be created for the NULL value. In this case, an element that has the **xsi:nil** attribute set to TRUE is returned for each NULL column value.  
  
## See Also

[Use RAW Mode with FOR XML](../../relational-databases/xml/use-raw-mode-with-for-xml.md)

[SELECT - FOR clause](../../t-sql/queries/select-for-clause-transact-sql.md)
