---
title: "IsReadOnly Property (SqlServiceAdvancedProperty)"
ms.custom: seo-lt-2019
ms.date: "03/03/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: wmi
ms.topic: "reference"
apiname: 
  - "IsReadOnly Property (SqlServiceAdvancedProperty Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "IsReadOnly property"
ms.assetid: 9672e70f-1d8c-4133-ac73-3b5733a1c4ee
author: "CarlRabeler"
ms.author: "carlrab"
---
# IsReadOnly Property (SqlServiceAdvancedProperty Class)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx-md](../../../includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]
  Gets or sets the Boolean property that specifies whether the advanced property is read-only or not.  
  
## Syntax  
  
```  
  
object.IsReadOnly [= value]  
```  
  
## Parts  
 *object*  
 A [SqlServiceAdvancedProperty Class](../../../relational-databases/wmi-provider-configuration-classes/sqlserviceadvancedproperty-class/sqlserviceadvancedproperty-class.md) object that represents an advanced property.  
  
## Property Value/Return Value  
 A Boolean value that specifies whether the advanced property is read-only or not: **true** if the advanced property is read-only, or **false** if the advanced property can be modified.  
  
## Remarks  
  
## See Also  
 [Starting and Stopping Services](https://technet.microsoft.com/library/ms174886\(v=sql.105\).aspx)  
  
  
