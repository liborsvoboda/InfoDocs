---
title: "Create a Database Master Key | Microsoft Docs"
ms.custom: ""
ms.date: "09/12/2019"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: security
ms.topic: conceptual
helpviewer_keywords: 
  - "database master key [SQL Server], creating"
ms.assetid: 8cb24263-e97d-4e4d-9429-6cf494a4d5eb
author: jaszymas
ms.author: jaszymas
manager: craigg
ms.reviewer: carlrab
---
# Create a Database Master Key

This topic describes how to create a database master key in the `master` database in [!INCLUDE[ssCurrent](../../../includes/sscurrent-md.md)] by using [!INCLUDE[tsql](../../../includes/tsql-md.md)].

**In This Topic**

- **Before you begin:**

  [Security](#Security)

- [To create a database master key using Transact-SQL](#TsqlProcedure)

## <a name="BeforeYouBegin"></a> Before You Begin

### <a name="Security"></a> Security

#### <a name="Permissions"></a> Permissions

Requires CONTROL permission on the database.

## <a name="TsqlProcedure"></a> Using Transact-SQL

### To create a database master key

1. Choose a password for encrypting the copy of the master key that will be stored in the database.
2. In **Object Explorer**, connect to an instance of [!INCLUDE[ssDE](../../../includes/ssde-md.md)].
3. Expand **System Databases**, right-click `master` and then click **New Query**.
4. Copy and paste the following example into the query window and click **Execute**.

  ```sql
  -- Creates the master key.
  -- The key is encrypted using the password "23987hxJ#KL95234nl0zBe."
  CREATE MASTER KEY ENCRYPTION BY PASSWORD = '23987hxJ#KL95234nl0zBe';
```

For more information, see [CREATE MASTER KEY &#40;Transact-SQL&#41;](/sql/t-sql/statements/create-master-key-transact-sql).
