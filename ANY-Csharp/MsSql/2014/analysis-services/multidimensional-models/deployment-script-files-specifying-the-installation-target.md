---
title: "Specifying the Installation Target | Microsoft Docs"
ms.custom: ""
ms.date: "06/13/2017"
ms.prod: "sql-server-2014"
ms.reviewer: ""
ms.technology: "analysis-services"
ms.topic: conceptual
helpviewer_keywords: 
  - "input files [Analysis Services]"
  - "installation targets [Analysis Services]"
  - "Analysis Services deployments, installation targets"
  - "Analysis Services Deployment Wizard, installation targets"
  - "deploying [Analysis Services], installation targets"
  - "modifying installation targets"
ms.assetid: cb706817-6f63-4771-92c3-b70030bbce3d
author: minewiskan
ms.author: owend
manager: craigg
---
# Specifying the Installation Target
  The [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] Deployment Wizard reads the installation target information from the \<*project name*>.deploymenttargets file. [!INCLUDE[ssBIDevStudioFull](../../includes/ssbidevstudiofull-md.md)] creates this file when you build the [!INCLUDE[msCoName](../../includes/msconame-md.md)] [!INCLUDE[ssNoVersion](../../includes/ssnoversion-md.md)] [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] project. [!INCLUDE[ssBIDevStudioFull](../../includes/ssbidevstudiofull-md.md)] uses the database and server specified on the **Deployment** page of the *\<project name>* **Properties Pages** dialog box to create the \<*project name*>.targets file.  
  
## Modifying the Installation Target for Deployment  
 In some situations, you may need to deploy an [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] project to a database or [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] instance that is different than the one specified on the **Deployment** page. For example, you may want to deploy the project to a server for testing before deployment, and then deploy it to a production server after testing is finished. You may also want to deploy a completed and tested project to multiple production servers in a Network Load Balancing cluster, or to a staging server and a production server.  
  
 To deploy an [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] project to a different database or [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] instance, you can change the installation target in the input file by using one of the methods described in the following procedure.  
  
#### To change the installation target after the input files have been generated  
  
-   Run the [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] Deployment Wizard interactively. On the **Installation Target** page, specify a new destination for the [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] instance and database.  
  
     -or-  
  
-   Run the [!INCLUDE[ssASnoversion](../../includes/ssasnoversion-md.md)] Deployment Wizard at the command prompt and set the wizard to run in answer file mode. For more information about answer file mode, see [Running the Analysis Services Deployment Wizard](running-the-analysis-services-deployment-wizard.md).  
  
     -or-  
  
-   Modify the \<*project name*>.deploymenttargets file by using any text editor.  
  
## See Also  
 [Specifying Partition and Role Deployment Options](deployment-script-files-partition-and-role-deployment-options.md)   
 [Specifying Configuration Settings for Solution Deployment](deployment-script-files-solution-deployment-config-settings.md)   
 [Specifying Processing Options](deployment-script-files-specifying-processing-options.md)  
  
  
