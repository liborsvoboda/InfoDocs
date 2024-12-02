---
title: ALTER EXTERNAL LANGUAGE (Transact-SQL) - SQL Server | Microsoft Docs
ms.custom:
ms.date: 11/04/2019
ms.prod: sql
ms.reviewer: ""
ms.technology: language-extensions
ms.topic: language-reference
author: nelgson
ms.author: negust
ms.reviewer: dphansen
manager: cgronlun
monikerRange: ">=sql-server-ver15||=sqlallproducts-allversions"
---

# CREATE EXTERNAL LANGUAGE (Transact-SQL)
[!INCLUDE[tsql-appliesto-ssver15-xxxx-xxxx-xxx](../../includes/tsql-appliesto-ssver15-xxxx-xxxx-xxx.md)]

Modifies the content in an existing external language extension in the database.

## Syntax

```text
ALTER EXTERNAL LANGUAGE language_name  
[ AUTHORIZATION owner_name ]
{
    SET <file_spec>
    | ADD <file_spec>
    | REMOVE <file_spec>
}
[ ; ]  

<file_spec> ::=  
{
    ( CONTENT = {<external_lang_specifier> | <content_bits>,
    FILE_NAME = <external_lang_file_name>
    [, PLATFORM = <platform> ]
    [, PARAMETERS = <external_lang_parameters> ]
    [, ENVIRONMENT_VARIABLES = <external_lang_env_variables> ] )
}

<external_lang_specifier> :: =  
{
    '[file_path\]os_file_name'  
}

<content_bits> :: =  
{
    varbinary_literal
   | varbinary_expression
}

<external_lang_file_name> :: =  
'extension_file_name'

<platform> :: =
{
   WINDOWS
  | LINUX
}

< external_lang_parameters > :: =  
'extension_specific_parameters'
```

### Arguments

**language_name**

Languages are database scoped objects. Language names must be unique within the database.

**owner_name**

Specifies the name of the user or role that owns the external language. If not specified, ownership is given to the current user. Depending on permissions, other users may need to be granted explicit permission to execute scripts using a specific language.

**file_spec**

Specifies the content of the language extension.Only one filespec is allowed for a specific language, per platform. 

**external_lang_specifier**

The full file path to the .zip or tar.gz file containing the extensions code. This content can either be a path to a .zip file (on Windows) or tar.gz (on Linux).

**content_bits**

Specifies the content of the language as a hex literal, similar to assemblies.
This option is useful if you need to create a language or alter an existing language (and have the required permissions to do so), but the file system on the server is restricted and you cannot copy the library files to a location that the server can access.

**external_lang_file_name**

Name of the extension .dll or .so file. This is required to identify the correct file, in cases where there are several .dll or .so files in the <external_lang_specifier> .zip or tar.gz.

**external_lang_parameters**

This provides a possibility to give a set of parameters to the external language runtime. Parameter values are provided to the external runtime after the external process has started. Environment variables however, are accessible to the language extension prior to the external process startup.

**external_lang_env_variables**

This provides a possibility to give a set of environment variables to the external language runtime prior to the external process startup. An example of an environment variable is for example the home directory of the runtime itself. For example: JRE_HOME.

**platform**

This parameter is needed for hybrid OS scenarios. In a hybrid architecture, the language needs to be registered once per platform. Platform and language name will be the unique key per external language. If no platform is specified, the current OS is assumed.

## Remarks

Currently, **PARAMETERS** and **ENVIRONMENT_VARIABLES** are not supported.

## Permissions

Requires the `ALTER ANY EXTERNAL LANGUAGE` permission. By default, any user who has **dbo** who is a member of the **db_owner** role has permissions to alter an external language. For all other users, you must explicitly give them permission using a [GRANT](https://docs.microsoft.com/sql/t-sql/statements/grant-database-permissions-transact-sql) statement, specifying ALTER ANY EXTERNAL LANGUAGE as the privilege.

## Examples

### Alter an external language in a database  

The following example adds an external language called Java to a database on SQL Server on Windows.

```sql
ALTER EXTERNAL LANGUAGE Java 
SET (CONTENT = N'<path-to-zip>', FILE_NAME = 'javaextension.dll');
GO
```

## See also

[CREATE EXTERNAL LANGUAGE (Transact-SQL)](create-external-language-transact-sql.md)  
[DROP EXTERNAL LANGUAGE (Transact-SQL)](drop-external-language-transact-sql.md)  
[sys.external_languages](../../relational-databases/system-catalog-views/sys-external-languages-transact-sql.md)  
[sys.external_language_files](../../relational-databases/system-catalog-views/sys-external-language-files-transact-sql.md)  
