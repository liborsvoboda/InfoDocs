---
title: DROP EXTERNAL LANGUAGE (Transact-SQL) - SQL Server | Microsoft Docs
ms.custom:
ms.date: 08/08/2019
ms.prod: sql
ms.technology: language-extensions
ms.topic: language-reference
author: nelgson
ms.author: negust
ms.reviewer: dphansen
manager: cgronlun
monikerRange: ">=sql-server-ver15||=sqlallproducts-allversions"
---

# DROP EXTERNAL LIBRARY (Transact-SQL)  
[!INCLUDE[tsql-appliesto-ssver15-xxxx-xxxx-xxx](../../includes/tsql-appliesto-ssver15-xxxx-xxxx-xxx.md)]

Deletes an existing external language.

## Syntax

```text
DROP EXTERNAL LANGUAGE <language_name>
```

### Arguments

**language_name**

Languages are database scoped objects. Language names must be unique within the database.

## Permissions

To delete a language requires the privilege ALTER ANY EXTERNAL LANGUAGE. By default, any database owner, or the owner of the object, can also delete an external language.

> [!NOTE]
> Note that before removing an external language, you need to remove the external libraries referencing the external language.

### Return values

An informational message is returned if the statement was successful.

## Remarks

Before an external language can be deleted, all external libraries for the specified language need to be deleted.

## Examples

Create an external language **Java**:

```sql
CREATE EXTERNAL LANGUAGE Java 
FROM (CONTENT = N'<path-to-zip>', FILE_NAME = 'javaextension.dll');
GO
```

Drop the external language:

```sql
DROP EXTERNAL LANGUAGE Java;
```

## See also

[CREATE EXTERNAL LANGUAGE (Transact-SQL)](create-external-language-transact-sql.md)  
[ALTER EXTERNAL LANGUAGE (Transact-SQL)](alter-external-language-transact-sql.md)  
[sys.external_languages](../../relational-databases/system-catalog-views/sys-external-languages-transact-sql.md)  
[sys.external_language_files](../../relational-databases/system-catalog-views/sys-external-language-files-transact-sql.md)  
