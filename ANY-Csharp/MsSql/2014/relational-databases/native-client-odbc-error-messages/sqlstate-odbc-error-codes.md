---
title: "SQLSTATE (ODBC Error Codes) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: native-client
ms.topic: "reference"
helpviewer_keywords: 
  - "SQL Server Native Client ODBC driver, errors"
  - "ODBC error handling, cause information"
  - "messages [ODBC], cause information"
  - "SQLSTATEs"
  - "errors [ODBC], cause information"
ms.assetid: 84cce528-edb0-473f-a85f-3eb87fbe2cf3
author: MightyPen
ms.author: genemi
manager: craigg
---
# SQLSTATE (ODBC Error Codes)
  SQLSTATE provides detailed information about the cause of a warning or error. For errors that occur in the data source detected and returned by [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)], the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Native Client ODBC driver maps the returned native error number to the appropriate SQLSTATE. If a native error number does not have an ODBC error code to map to, the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Native Client ODBC driver returns SQLSTATE 42000 ("syntax error or access violation"). For errors that are detected by the driver, the [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] Native Client ODBC driver generates the appropriate SQLSTATE.  
  
 For more information about the state error codes, see the following topics:  
  
-   [Appendix A: ODBC Error Codes](https://go.microsoft.com/fwlink/?LinkId=89356)  
  
-   [SQLSTATE Mappings](https://go.microsoft.com/fwlink/?LinkId=89355)  
  
## See Also  
 [Handling Errors and Messages](handling-errors-and-messages.md)  
  
  
