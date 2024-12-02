---
title: "Compare Business Intelligence Capabilities In Different Microsoft Environments | Microsoft Docs"
ms.prod: "sql-server-2014"
ms.technology: "reporting-services-native"
ms.topic: conceptual
author: maggiesMSFT
ms.author: maggies
manager: kfile
ms.reviewer: ""
ms.custom: ""
ms.date: 12/15/2019
---
# Compare Business Intelligence Capabilities In Different Microsoft Environments

Microsoft [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] Business Intelligence can be deployed in a number of different environments including [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] with SharePoint Server, SharePoint Online, and Power BI for Office 365. This topic compares the components and features supported in each environment.  
  
For more information comparing SharePoint Server and SharePoint Online, see [Compare SharePoint plans and options](https://products.office.com/SharePoint/compare-sharepoint-plans).  
  
## Author and manage BI reports and dashboards  
  
||SQL Server 2014 & SharePoint Server 2013|SharePoint Online Plan 2|Power BI for Office 365|  
|-|----------------------------------------------|------------------------------|-----------------------------|  
|BI Sites|[!INCLUDE[ssGemini](../includes/ssgemini-md.md)] Gallery|No|Power BI Site|  
|Data stewardship and query sharing and management|No|No|Yes **<sup>1</sup>**|  
|Integration with Master Data Services (MDS) and Data Quality Services (DQS)|Yes|No|No|  
|Schedule Data Refresh|Yes, but does not support workbooks that contain Power Query data|No|Yes|  
|Natural Language Query (Q&A)|No|No|Yes **<sup>2</sup>**|  
|Predictive forecasting|No|No|Yes **<sup>3</sup>**|  
|[!INCLUDE[ssRSnoversion](../includes/ssrsnoversion-md.md)] integration|Yes|No|No|  
|[!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)] integration (Multidimensional and Tabular)|Yes|No|No|  
|Export interactive Power View dashboard to PowerPoint presentation|Yes|No|No|  
|In-browser dashboard authoring|Yes|No|No|  
|Usage Monitoring|Yes|No|Yes|  
|Leverage row based security of [!INCLUDE[ssASnoversion](../includes/ssasnoversion-md.md)] cubes|Yes|No|No|  
|||||

 **<sup>1</sup>**  [Understanding the Role of Data Stewards in Data Management](https://support.office.com/Article/Understanding-the-Role-of-Data-Stewards-in-Data-Management-ae3352f3-4389-45e8-a682-7fd6edb92524?ui=en-US&rs=en-US&ad=US) and [Video: Power BI Info Management and Data Stewardship](https://www.youtube.com/watch?v=8dHOj68ts7c).  
  
 **<sup>2</sup>**  [Power BI Q&A: Optimize a Power BI workbook (cloud modeling)](https://powerbi.microsoft.com/nl-nl/blog/new-in-power-bi-cloud-modeling-for-q-and-a/).  
  
 **<sup>3</sup>**  [Introducing new forecasting capabilities in Power View for Office 365](https://blogs.msdn.com/b/powerbi/archive/2014/05/08/introducing-new-forecasting-capabilities-in-power-view-for-office-365.aspx).  
  
## View and browse BI data, reports, and dashboards  
  
||SQL Server 2014 & SharePoint Server 2013|SharePoint Online Plan 2|Power BI for Office 365|  
|-|----------------------------------------------|------------------------------|-----------------------------|  
|View Microsoft Excel workbooks in a browser|Yes, if the workbook size less than 2 GB|Yes, if the workbook size less than 10 MB|Yes, if the workbook size less than 250 MB|  
|In-browser Data exploration in HTML5|No|No|Yes|  
|Mobile BI app to access reports and dashboards remotely|No|No|Yes **<sup>1</sup>**|  
|Excel workbook with [!INCLUDE[ssGemini](../includes/ssgemini-md.md)] as a data source **<sup>2</sup>**|Yes|No|No|  
|Ability to use features in different browsers and versions|Yes, for non-Power View visualizations **<sup>3</sup>**|Yes, for workbook file sizes less than 10 MB **<sup>3</sup>**|Yes **<sup>3</sup>**|  
|||||

 **<sup>1</sup>**  [Microsoft Power BI](https://apps.microsoft.com/windows/app/microsoft-power-bi/b7e7c94d-2ea3-4fa6-a277-9d19a1f697ba).  
  
 **<sup>2</sup>**  [PowerPivot Workbooks as a Data Source](https://support.office.com/article/Power-Pivot-Powerful-data-analysis-and-data-modeling-in-Excel-A9C2C6E2-CC49-4976-A7D7-40896795D045)  
  
 **<sup>3</sup>**  [Mobile Support across Business Intelligence (BI) Tools](https://msdn.microsoft.com/library/dn151146\(v=sql.110\).aspx) and [Planning for Reporting Services and Power View Browser Support (Reporting Services 2014)](https://msdn.microsoft.com/library/ms156511.aspx).  
  
## More information  
  
- [BI capabilities in Excel and Office 365](https://support.office.com/article/BI-capabilities-in-Excel-and-Office-365-26c0548e-124c-4fd3-aab3-5f64568cb743).  
  
- For information on requirements to use synonyms, see [Optimizing Power BI Q&A with Synonyms & Phrasing](https://blog.pragmaticworks.com/optimizing-power-bi-qa-with-synonyms-phrasing-using-cloud-modeling) at pragmaticworks.com.  
  
- [Office Online, Pick your enterprise social network: Yammer or Newsfeed?](https://support.office.com/article/Pick-your-enterprise-social-network-Yammer-or-Newsfeed-21954c85-4384-47d4-96c2-dfa1c9d56e66?ui=en-US&rs=en-US&ad=US).  
  
- [Power BI for Office 365](https://www.microsoft.com/powerbi/default.aspx).  
  
- [Power BI pricing](https://www.microsoft.com/powerBI/pricing.aspx).  
  
- [Analysis and reporting with Microsoft business intelligence (BI) tools](../reporting-services/choosing-microsoft-business-intelligence-bi-tools-for-analysis-and-reporting.md)  
  
## Community Content

