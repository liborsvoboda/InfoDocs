---
title: "HelpLink Element | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: reporting-services
ms.topic: "reference"
helpviewer_keywords: 
  - "HelpLink element"
  - "SoapException class"
ms.assetid: a4489103-a874-44c2-8f75-95cb238928ed
author: maggiesMSFT
ms.author: maggies
manager: kfile
---
# HelpLink Element
  The **HelpLink** element of the **Detail** property is a URL string that is generated by the report server. The URL targets a Web page managed by [!INCLUDE[msCoName](../../../includes/msconame-md.md)] Help and Support and provides additional help and knowledge base articles about specific errors that occur in [!INCLUDE[ssRSnoversion](../../../includes/ssrsnoversion-md.md)]. The URL has the following syntax:  
  
 **http://**www.microsoft.com**/**products**/**ee**/**transform.aspx**?EvtSrc**=_value_**&EvtID**=_value_**&ProdName**=_value_**&ProdVer**=_value_  
  
 The following table lists the arguments of the **HelpLink** URL.  
  
|Argument|Value|  
|--------------|-----------|  
|**EvtSrc**|"Microsoft.ReportingServices.Diagnostics.ErrorStrings.resources.Strings"|  
|**EvtID**|The report server error code, for example, rsReservedItem.|  
|**ProdName**|"Microsoft SQL%20Server%20Reporting%20Services". The value of the product name is URL encoded.|  
|**ProdVer**|The version number of [!INCLUDE[ssRSnoversion](../../../includes/ssrsnoversion-md.md)]. A value of "8.00" indicates [!INCLUDE[ssVersion2000](../../../includes/ssversion2000-md.md)] [!INCLUDE[ssRSnoversion](../../../includes/ssrsnoversion-md.md)].|  
  
 The following example illustrates the **HelpLink** URL that is returned for error code `rsReservedItem`. This error occurs when a user attempts to modify or delete a reserved item in [!INCLUDE[ssRSnoversion](../../../includes/ssrsnoversion-md.md)]:  
  
```  
https://www.microsoft.com/products/ee/transform.aspx?  
EvtSrc=Microsoft.ReportingServices.Diagnostics.ErrorStrings.resources.Strings  
&EvtID=rsReservedItem&ProdName=Microsoft%20SQL%20Server%20Reporting%20Services&ProdVer=8.00  
```  
  
 You can access the **HelpLink** element in your code using the **SoapException** class.  
  
```vb  
Try  
   rs.DeleteItem("/Report1")  
  
Catch e As SoapException  
   Console.WriteLine(e.Detail("HelpLink").InnerXml)  
End Try  
```  
  
```csharp  
try  
{  
   rs.DeleteItem("/Report1");  
}  
  
catch (SoapException e)  
{  
   Console.WriteLine(e.Detail["HelpLink"].InnerXml);  
}  
```  
  
## See Also  
 [Introducing Exception Handling in Reporting Services](../introducing-exception-handling-in-reporting-services.md)   
 [Reporting Services SoapException Class](reporting-services-soapexception-class.md)   
 [Using the Detail Property to Handle Specific Errors](../best-practices/using-the-detail-property-to-handle-specific-errors.md)  
  
  