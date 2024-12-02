---
title: "TRANSLATE (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: 02/01/2019
ms.prod: sql
ms.prod_service: "sql-database"
ms.reviewer: ""
ms.technology: t-sql
ms.topic: conceptual
f1_keywords: 
  - "TRANSLATE"
  - "TRANSLATE_TSQL"
helpviewer_keywords: 
  - "TRANSLATE function"
ms.assetid: 0426fa90-ef6d-4d19-8207-02ee59f74aec
author: MikeRayMSFT
ms.author: mikeray
monikerRange: ">=sql-server-2017||=sqlallproducts-allversions||>=sql-server-linux-2017||=azuresqldb-mi-current"
---
# TRANSLATE (Transact-SQL)

[!INCLUDE[tsql-appliesto-ss2017-asdb-xxxx-xxx-md](../../includes/tsql-appliesto-ss2017-asdb-xxxx-xxx-md.md)]

Returns the string provided as a first argument after some characters specified in the second argument are translated into a destination set of characters specified in the third argument.

## Syntax

```sql
TRANSLATE ( inputString, characters, translations)
```

## Arguments

 *inputString*
 Is the string [expression](../../t-sql/language-elements/expressions-transact-sql.md) to be searched. *inputString* can be any character data type (nvarchar, varchar, nchar, char).

 *characters*
 Is a string [expression](../../t-sql/language-elements/expressions-transact-sql.md) containing characters that should be replaced. *characters* can be any character data type.

*translations*
 Is a string [expression](../../t-sql/language-elements/expressions-transact-sql.md) containing the replacement characters. *translations* must be the same data type and length as *characters*.

## Return Types

Returns a character expression of the same data type as `inputString` where characters from the second argument are replaced with the matching characters from third argument.

## Remarks

`TRANSLATE` will return an error if *characters* and *translations* expressions have different lengths. `TRANSLATE` will return NULL if any of the arguments are NULL.  

The behavior of the `TRANSLATE` function is similar to using multiple [REPLACE](../../t-sql/functions/replace-transact-sql.md) functions. `TRANSLATE` does not, however, replace any individual character in `inputString` more than once. A single value in the `characters` parameter, can replace multiple characters in `inputString`. 

This is dissimilar to the behavior of multiple `REPLACE` functions, as each function call would replace all relevant characters, even if they had been replaced by a previous nested `REPLACE` function call. 

`TRANSLATE` is always SC collation aware.

## Examples

### A. Replace square and curly braces with regular braces

The following query replaces square and curly braces in the input string with parentheses:

```sql
SELECT TRANSLATE('2*[3+4]/{7-2}', '[]{}', '()()');
```

[!INCLUDE[ssResult_md](../../includes/ssresult-md.md)]

```plain_text
2*(3+4)/(7-2)
```

#### Equivalent calls to REPLACE

In the following SELECT statement, there is a group of four nested calls to the REPLACE function. This group is equivalent to the one call made to the TRANSLATE function in the preceding SELECT:

```sql
SELECT
REPLACE
(
      REPLACE
      (
            REPLACE
            (
                  REPLACE
                  (
                        '2*[3+4]/{7-2}',
                        '[',
                        '('
                  ),
                  ']',
                  ')'
            ),
            '{',
            '('
      ),
      '}',
      ')'
);
```

### B. Convert GeoJSON points into WKT

GeoJSON is a format for encoding a variety of geographic data structures. With the `TRANSLATE` function, developers can easily convert GeoJSON points to WKT format and vice versa. The following query replaces square and curly braces in input  with regular braces:

```sql
SELECT TRANSLATE('[137.4, 72.3]' , '[,]', '( )') AS Point,
    TRANSLATE('(137.4 72.3)' , '( )', '[,]') AS Coordinates;
```

[!INCLUDE[ssResult_md](../../includes/ssresult-md.md)]

|Point  |Coordinates |  
|---------|--------- |
|(137.4  72.3) |[137.4,72.3] |

### C. Use the TRANSLATE function

```sql
SELECT TRANSLATE('abcdef','abc','bcd') AS Translated,
       REPLACE(REPLACE(REPLACE('abcdef','a','b'),'b','c'),'c','d') AS Replaced;
```

The results are:

| Translated | Replaced |  
| ---------|--------- |
| bcddef | ddddef |


## See Also

 [CONCAT &#40;Transact-SQL&#41;](../../t-sql/functions/concat-transact-sql.md)  
 [CONCAT_WS &#40;Transact-SQL&#41;](../../t-sql/functions/concat-ws-transact-sql.md)  
 [FORMATMESSAGE &#40;Transact-SQL&#41;](../../t-sql/functions/formatmessage-transact-sql.md)  
 [QUOTENAME &#40;Transact-SQL&#41;](../../t-sql/functions/quotename-transact-sql.md)  
 [REPLACE &#40;Transact-SQL&#41;](../../t-sql/functions/replace-transact-sql.md)  
 [REVERSE &#40;Transact-SQL&#41;](../../t-sql/functions/reverse-transact-sql.md)  
 [STRING_AGG &#40;Transact-SQL&#41;](../../t-sql/functions/string-agg-transact-sql.md)  
 [STRING_ESCAPE &#40;Transact-SQL&#41;](../../t-sql/functions/string-escape-transact-sql.md)  
 [STUFF &#40;Transact-SQL&#41;](../../t-sql/functions/stuff-transact-sql.md)  
 [String Functions (Transact-SQL)](../../t-sql/functions/string-functions-transact-sql.md)
