---
title: "Context Property (SecurityCertificate)"
ms.custom: seo-lt-2019
ms.date: "03/04/2017"
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: wmi
ms.topic: "reference"
apiname: 
  - "Context Property (SecurityCertificate Class)"
apilocation: 
  - "sqlmgmproviderxpsp2up.mof"
apitype: "MOFDef"
helpviewer_keywords: 
  - "Context property"
ms.assetid: 65dd737f-81ce-479e-8219-7b1b4d8f57c7
author: "CarlRabeler"
ms.author: "carlrab"
---
# Context Property (SecurityCertificate Class)
[!INCLUDE[tsql-appliesto-ss2008-xxxx-xxxx-xxx-md](../../../includes/tsql-appliesto-ss2008-xxxx-xxxx-xxx-md.md)]
  Gets the context of the security certificate.  
  
## Syntax  
  
```  
  
object.Context [= value]  
```  
  
## Parts  
 *object*  
 A [SecurityCertificate Class](../../../relational-databases/wmi-provider-configuration-classes/securitycertificate-class/securitycertificate-class.md) object that represents a security certificate.  
  
## Property Value/Return Value  
 An **sint32** array value that specifies the context of the security certificate.  
  
## Remarks  
  
## See Also  
 [Configuring Server Network Protocols and Net-Libraries](https://msdn.microsoft.com/library/ms177485\(v=sql.100\).aspx)  
  
  
