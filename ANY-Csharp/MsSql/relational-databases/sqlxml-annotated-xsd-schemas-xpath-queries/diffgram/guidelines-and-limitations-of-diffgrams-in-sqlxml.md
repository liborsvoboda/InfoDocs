---
title: "Guidelines and Limitations of DiffGrams in SQLXML"
ms.custom: ""
ms.date: "03/16/2017"
ms.prod: sql
ms.prod_service: "database-engine, sql-database"
ms.reviewer: ""
ms.technology: 

ms.topic: "reference"
helpviewer_keywords: 
  - "DiffGrams [SQLXML], about DiffGrams"
ms.assetid: cf8689c4-2a63-4d05-b202-21b5ff187d7f
author: MightyPen
ms.author: genemi
monikerRange: "=azuresqldb-current||>=sql-server-2016||=sqlallproducts-allversions||>=sql-server-linux-2017||=azuresqldb-mi-current"
---
# Guidelines and Limitations of DiffGrams in SQLXML
[!INCLUDE[appliesto-ss-asdb-xxxx-xxx-md](../../../includes/appliesto-ss-asdb-xxxx-xxx-md.md)]
  Remember the following when using DiffGrams with SQLXML 4.0:  
  
-   Binary large object (BLOB) types like **text/ntext** and images should not be used in the **\<diffgr:before>** block in when working with DiffGrams, because this will include them for use in concurrency control. This can cause problems with [!INCLUDE[ssNoVersion](../../../includes/ssnoversion-md.md)] because of the limitations on comparison for BLOB types. For example, the LIKE keyword is used in the WHERE clause for comparing between columns of the **text** data type; however, comparisons will fail in the case of BLOB types where the size of the data is greater than 8K.  
  
-   Special characters in **ntext** data can cause problems with SQLXML 4.0 because of the limitations on comparison for BLOB types. For example, the use of "[Serializable]" in the **\<diffgr:before>** block of a DiffGram when used in concurrency checking of a column of **ntext** type will fail with the following SQLOLEDB error description:  
  
    ```  
    Empty update, no updatable rows found   Transaction aborted  
    ```  
  
  
