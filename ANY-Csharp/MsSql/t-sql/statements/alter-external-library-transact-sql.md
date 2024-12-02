---
title: "ALTER EXTERNAL LIBRARY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: 11/04/2019
ms.prod: sql
ms.reviewer: ""
ms.technology: machine-learning
ms.topic: "language-reference"
f1_keywords: 
  - "ALTER EXTERNAL LIBRARY"
  - "ALTER_EXTERNAL_LIBRARY_TSQL"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "ALTER EXTERNAL LIBRARY"
author: dphansen
ms.author: davidph
manager: cgronlund
monikerRange: ">=sql-server-2017||>=sql-server-linux-ver15||=azuresqldb-current||=sqlallproducts-allversions"
---
# ALTER EXTERNAL LIBRARY (Transact-SQL)  

[!INCLUDE[appliesto-ss-asdb-xxxx-xxx-md](../../includes/appliesto-ss-asdb-xxxx-xxx-md.md)]

Modifies the content of an existing external package library.

::: moniker range=">=sql-server-2017||>=sql-server-linux-ver15||sqlallproducts-allversions"
> [!NOTE]
> In SQL Server 2017, R language and Windows platform are supported. R, Python, and external languages on the Windows and Linux platforms are supported in SQL Server 2019 and later.
::: moniker-end

::: moniker range="=azuresqldb-current"
> [!NOTE]
> In Azure SQL Database, you can alter a library by removing it and then using **sqlmlutils** to install the altered version. For more information about **sqlmlutils**, see [Add a package with sqlmlutils](/azure/sql-database/sql-database-machine-learning-services-add-r-packages#add-a-package-with-sqlmlutils).
::: moniker-end

::: moniker range=">=sql-server-ver15||>=sql-server-linux-ver15||=sqlallproducts-allversions"
## Syntax for SQL Server 2019

```text
ALTER EXTERNAL LIBRARY library_name
[ AUTHORIZATION owner_name ]
SET <file_spec>
WITH ( LANGUAGE = <language> )
[ ; ]

<file_spec> ::=
{
    (CONTENT = { <client_library_specifier> | <library_bits> | NONE}
    [, PLATFORM = <platform> )
}

<client_library_specifier> :: =
{
      '[\\computer_name\]share_name\[path\]manifest_file_name'
    | '[local_path\]manifest_file_name'
    | '<relative_path_in_external_data_source>'
}

<library_bits> :: =
{ 
      varbinary_literal 
    | varbinary_expression 
}

<platform> :: = 
{
      WINDOWS
    | LINUX
}

<language> :: = 
{
      'R'
    | 'Python'
    | <external_language>
}
```
::: moniker-end
::: moniker range=">=sql-server-2017 <=sql-server-2017||=sqlallproducts-allversions"
## Syntax for SQL Server 2017

```text
ALTER EXTERNAL LIBRARY library_name
[ AUTHORIZATION owner_name ]
SET <file_spec>
WITH ( LANGUAGE = 'R' )
[ ; ]

<file_spec> ::=
{
    (CONTENT = { <client_library_specifier> | <library_bits> | NONE}
    [, PLATFORM = WINDOWS )
}

<client_library_specifier> :: =
{
      '[\\computer_name\]share_name\[path\]manifest_file_name'
    | '[local_path\]manifest_file_name'
    | '<relative_path_in_external_data_source>'
}

<library_bits> :: =
{ 
      varbinary_literal 
    | varbinary_expression 
}
```
::: moniker-end

::: moniker range="=azuresqldb-current||=sqlallproducts-allversions"
## Syntax for Azure SQL Database

```text
CREATE EXTERNAL LIBRARY library_name  
[ AUTHORIZATION owner_name ]  
FROM <file_spec> [ ,...2 ]  
WITH ( LANGUAGE = 'R' )  
[ ; ]  

<file_spec> ::=  
{  
    (CONTENT = <library_bits>)  
}  

<library_bits> :: =  
{ 
      varbinary_literal 
    | varbinary_expression 
}
```
::: moniker-end

### Arguments

**library_name**

Specifies the name of an existing package library. Libraries are scoped to the user. Library names are must be unique within the context of a specific user or owner.

The library name cannot be arbitrarily assigned. That is, you must use the name that the calling runtime expects when it loads the package.

**owner_name**

Specifies the name of the user or role that owns the external library.

::: moniker range=">=sql-server-2017||>=sql-server-linux-ver15||=sqlallproducts-allversions"
**file_spec**

Specifies the content of the package for a specific platform. Only one file artifact per platform is supported.

The file can be specified in the form of a local path or network path. If the data source option is specified, the file name can be a relative path with respect to the container referenced in the `EXTERNAL DATA SOURCE`.

Optionally, an OS platform for the file can be specified. Only one file artifact or content is permitted for each OS platform for a specific language or runtime.

::: moniker-end

**library_bits**

Specifies the content of the package as a hex literal, similar to assemblies.

This option is useful if you have the required permission to alter a library, but file access on the server is restricted and you cannot save the contents to a path the server can access.

Instead, you can pass the package contents as a variable in binary format.

::: moniker range=">=sql-server-2017 <=sql-server-2017||=sqlallproducts-allversions"
**platform = WINDOWS**

Specifies the platform for the content of the library. This value is required when modifying an existing library to add a different platform.
In SQL Server 2017, Windows is the only supported platform.
::: moniker-end

::: moniker range=">=sql-server-ver15||>=sql-server-linux-ver15||=sqlallproducts-allversions"
**platform**

Specifies the platform for the content of the library. This value is required when modifying an existing library to add a different platform. 
In SQL Server 2019, Windows and Linux are the supported platforms.
::: moniker-end

::: moniker range=">=sql-server-2017 <=sql-server-2017||=sqlallproducts-allversions"
**LANGUAGE = 'R'**

Specifies the language of the package. R is supported in SQL Server 2017.
::: moniker-end

::: moniker range="=azuresqldb-current||=sqlallproducts-allversions"
**LANGUAGE = 'R'**

Specifies the language of the package. R is supported in Azure SQL Database.
::: moniker-end

::: moniker range=">=sql-server-ver15||>=sql-server-linux-ver15||=sqlallproducts-allversions"
**language**

Specifies the language of the package. The value can be **R**, **Python**, or the name of an external language (see [CREATE EXTERNAL LANGUAGE](create-external-language-transact-sql.md)).
::: moniker-end

## Remarks

::: moniker range=">=sql-server-2017 <=sql-server-2017||=sqlallproducts-allversions"
For the R language, packages must be prepared in the form of zipped archive files with the .ZIP extension for Windows. In SQL Server 2017, only the Windows platform is supported.  
::: moniker-end

::: moniker range=">=sql-server-ver15||>=sql-server-linux-ver15||=sqlallproducts-allversions"
For the R language, when using a file, packages must be prepared in the form of zipped archive files with the .ZIP extension. 

For the Python language, the package in a .whl or .zip file must be prepared in the form of a zipped archive file. If the package already is a .zip file, it must be included in a new .zip file. Uploading a package as .whl or .zip file directly is currently not supported.
::: moniker-end

The `ALTER EXTERNAL LIBRARY` statement only uploads the library bits to the database. The modified library is installed when a user runs code in  [sp_execute_external_script (Transact-SQL)](../../relational-databases/system-stored-procedures/sp-execute-external-script-transact-sql.md) that calls the library.

## Permissions

By default, the **dbo** user or any member of the role **db_owner** has permission to run ALTER EXTERNAL LIBRARY. Additionally, the user who created the external library can alter that external library.

## Examples

The following examples change an external library called `customPackage`.

::: moniker range=">=sql-server-2017||>=sql-server-linux-ver15||sqlallproducts-allversions"
### Replace the contents of a library using a file

The following example modifies an external library called `customPackage`, using a zipped file containing the updated bits.

```sql
ALTER EXTERNAL LIBRARY customPackage 
SET 
  (CONTENT = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\customPackage.zip')
WITH (LANGUAGE = 'R');
```

To install the updated library, execute the stored procedure `sp_execute_external_script`.

```sql
EXEC sp_execute_external_script 
@language =N'R', 
@script=N'library(customPackage)'
;
```
::: moniker-end

::: moniker range=">=sql-server-ver15||>=sql-server-linux-ver15||=sqlallproducts-allversions"
For the Python language in SQL Server 2019, the example also works by replacing `'R'` with `'Python'`.
::: moniker-end

### Alter an existing library using a byte stream

The following example alters the existing library by passing the new bits as a hexadecimal literal.

```SQL
ALTER EXTERNAL LIBRARY customLibrary 
SET (CONTENT = 0xABC123...) WITH (LANGUAGE = 'R');
```

::: moniker range=">=sql-server-ver15||>=sql-server-linux-ver15||=sqlallproducts-allversions"
For the Python language in SQL Server 2019, the example also works by replacing `'R'` with `'Python'`.
::: moniker-end

> [!NOTE]
> This code sample only demonstrates the syntax; the binary value in `CONTENT =` has been truncated for readability and does not create a working library. The actual contents of the binary variable would be much longer.

## See also

[CREATE EXTERNAL LIBRARY (Transact-SQL)](create-external-library-transact-sql.md)  
[DROP EXTERNAL LIBRARY (Transact-SQL)](drop-external-library-transact-sql.md)  
[sys.external_library_files](../../relational-databases/system-catalog-views/sys-external-library-files-transact-sql.md)  
[sys.external_libraries](../../relational-databases/system-catalog-views/sys-external-libraries-transact-sql.md) 
