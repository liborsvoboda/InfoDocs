---
title: "Invalid Characters and Escape Rules | Microsoft Docs"
ms.custom: ""
ms.date: "03/14/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: xml
ms.topic: conceptual
helpviewer_keywords: 
  - "FOR XML clause, invalid characters"
  - "FOR XML clause, escape rules"
ms.assetid: f2e9b997-f400-4963-b225-59d46c6b93e8
author: MightyPen
ms.author: genemi
---
# Invalid Characters and Escape Rules
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx-md](../../includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]
  This topic describes how invalid XML characters are handled by the FOR XML clause, and lists the escape rules for characters that are invalid in XML names.  
  
## For XML and Invalid Characters  
 [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] entitizes invalid XML characters when they are returned within FOR XML queries that do not use the TYPE directive.  
  
 Although XML 1.0 conformant parsers raise parse errors regardless of whether these characters are entitized or not, the entitized form is better aligned with XML 1.1. The entitized form is also potentially better aligned with future versions of the XML standard. Additionally, it makes debugging simpler, because the code point of the invalid character becomes visible.  
  
 For users of XML tools, no workaround is required, because the XML parser will fail either way at the point where the invalid characters occur in the data stream. If you use non-XML tools, this change can require you to update your programming logic to search for these characters as entitized values.  
  
 The following white space characters are entitized differently in FOR XML queries to preserve their presence through round-tripping:  
  
-   In element content and attributes: **hex(0D)** (carriage return)  
  
-   In attribute content: **hex(09)** (tab), **hex(0A)** (line feed)  
  
 These characters are preserved in output, and a parser will not normalize them.  
  
## Escape Rules  
 [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] names that contain characters that are invalid in XML names, such as spaces, are translated into XML names in a way in which the invalid characters are translated into escaped numeric entity encoding.  
  
 There are only two non-alphabetic characters that can occur within an XML name: the colon (:) and the underscore (_). Because the colon is already reserved for namespaces, the underscore is chosen as the escape character. Following are the escape rules that are used for encoding:  
  
-   Any UCS-2 character that is not a valid XML name character, according to the XML 1.0 specification, is escaped as _xHHHH\_. The HHHH stands for the four-digit hexadecimal UCS-2 code for the character in the most significant bit-first order. For example, the table name **Order Details** is encoded as Order_x0020_Details.  
  
-   Characters that do not fit into the UCS-2 realm (the UCS-4 additions of the range U+00010000 to U+0010FFFF) are encoded as _xHHHHHHHH\_. The HHHHHHHH stands for the eight-digit hexadecimal UCS-4 encoding of the character, if under SQL Server 2000 backward compatibility mode. Otherwise, the characters are encoded as_xHHHHHH\_, in order to align with the ISO standard.  
  
-   The underscore character does not have to be escaped unless it is followed by the character x. For example, the table name **Order_Details** is not encoded.  
  
-   The colon in identifiers is not escaped As a result, the namespace element and attribute names can be generated by the FOR XML query. For example, the following query generates a namespace attribute that has a colon in the name:  
  
    ```  
    SELECT 'namespace-urn' as 'xmlns:namespace',   
     1 as 'namespace:a'   
    FOR XML RAW  
    ```  
  
     The query produces this result:  
  
    ```  
    <row xmlns:namespace="namespace-urn" namespace:a="1"/>  
    ```  
  
     Note that WITH XMLNAMESPACES is the recommended way to add XML namespaces.  
  
## See Also  
 [FOR XML &#40;SQL Server&#41;](../../relational-databases/xml/for-xml-sql-server.md)  
  
  