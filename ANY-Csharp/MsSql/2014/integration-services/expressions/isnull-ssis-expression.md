---
title: "ISNULL (SSIS Expression) | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: integration-services
ms.topic: conceptual
helpviewer_keywords: 
  - "null values [Integration Services]"
  - "ISNULL function"
ms.assetid: 88dbf49e-1307-4dda-b9db-ff1632053550
author: janinezhang
ms.author: janinez
manager: craigg
---
# ISNULL (SSIS Expression)
  Returns a Boolean result based on whether an expression is null.  
  
## Syntax  
  
```  
  
ISNULL(expression)  
```  
  
## Arguments  
 *expression*  
 Is a valid expression of any data type.  
  
## Result Types  
 DT_BOOL  
  
## Expression Examples  
 This example returns TRUE if the **DiscontinuedDate** column contains a null value.  
  
```  
ISNULL(DiscontinuedDate)  
```  
  
 This example returns "Unknown last name" if the value in the **LastName** column is null, otherwise it returns the value in **LastName**.  
  
```  
ISNULL(LastName)? "Unknown last name":LastName  
```  
  
 This example always returns TRUE if the **DaysToManufacture** column is null, regardless of the value of the variable **AddDays**.  
  
```  
ISNULL(DaysToManufacture + @AddDays)  
```  
  
## See Also  
 [Functions &#40;SSIS Expression&#41;](functions-ssis-expression.md)   
 [COALESCE &#40;Transact-SQL&#41;](/sql/t-sql/language-elements/coalesce-transact-sql)  
  
  
