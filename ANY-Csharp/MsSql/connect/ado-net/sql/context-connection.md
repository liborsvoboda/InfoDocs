---
title: "The context connection"
description: "Describes the context connection."
ms.date: "08/15/2019"
ms.assetid: e443ca86-9243-4234-a822-ed10a53a9de0
ms.prod: sql
ms.prod_service: connectivity
ms.technology: connectivity
ms.topic: conceptual
author: rothja
ms.author: jroth
ms.reviewer: v-kaywon
---
# The context connection

[!INCLUDE[Driver_ADONET_Download](../../../includes/driver_adonet_download.md)]

The problem of internal data access is a fairly common scenario. That is, you wish to access the same server on which your common language runtime (CLR) stored procedure or function is executing. One option is to create a connection using <xref:Microsoft.Data.SqlClient.SqlConnection>, specify a connection string that points to the local server, and open the connection. This requires specifying credentials for logging in. The connection is in a different database session than the stored procedure or function, it may have different `SET` options, it is in a separate transaction, it does not see your temporary tables, and so on. If your managed stored procedure or function code is executing in the SQL Server process, it is because someone connected to that server and executed a SQL statement to invoke it. You probably want the stored procedure or function to execute in the context of that connection, along with its transaction, `SET` options, and so on. This is called the context connection.  
  
The context connection lets you execute Transact-SQL statements in the same context that your code was invoked in the first place. For more detailed information, see [The context connection](https://go.microsoft.com/fwlink/?LinkId=115395) from SQL Server Books Online.
