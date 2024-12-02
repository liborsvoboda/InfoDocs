---
title: "Manage notebooks: Azure Data Studio"
titleSuffix: SQL Server Big Data Clusters
description: Learn how to manage notebooks in Azure Data Studio. This includes opening notebooks, saving them, and changing your big data cluster connection.
author: MikeRayMSFT 
ms.author: mikeray
ms.reviewer: mihaelab
ms.metadata: seo-lt-2019
ms.date: 12/13/2019
ms.topic: conceptual
ms.prod: sql
ms.technology: big-data-cluster
---

# How to manage notebooks in Azure Data Studio

[!INCLUDE[tsql-appliesto-ssver15-xxxx-xxxx-xxx](../includes/tsql-appliesto-ssver15-xxxx-xxxx-xxx.md)]

This article shows you how to open and save notebook files in Azure Data Studio with SQL Server. It also demonstrates how to change your connection to your SQL Server big data cluster.

## Prerequisites

This article assumes that you already have a notebook that you want to use in Azure Data Studio. If you want to create a notebook, see [How to use notebooks in SQL Server](notebooks-guidance.md). To use notebooks in Azure Data Studio, you must meet the following prerequisites:

- [Deploy a big data cluster](quickstart-big-data-cluster-deploy.md).
- [SQL Server 2019 big data tools](deploy-big-data-tools.md):
   - **Azure Data Studio**
   - **SQL Server 2019 extension**
   - **kubectl**

## Open a notebook

There are several ways to open the **Open Notebook** dialog. You can use the File menu, the Dashboard, and the Command Palette. The following sections describe each method.

### File menu

Select **File Open** from the File menu Ctrl+O (in Windows) and Cmd+O (in Mac).

![Open the Open File dialog by selecting File Open](./media/notebooks-how-to-manage/open-file-1.png) 

### Dashboard

Click **Open Notebook** in the dashboard to open the File Open dialog.

![Open the Open File dialog by selecting Open Notebook in the dashboard](./media/notebooks-how-to-manage/open-file-2.png) 

### Command Palette

Use command **File: Open** from command palette by typing Ctrl+Shift+P (in Windows) and Cmd+Shift+P (in Mac).

![Open the Open File dialog by entering File:Open in the command palette](./media/notebooks-how-to-manage/open-file-3.png)

## Save a notebook

There is currently one way to save a notebook. You must select **Save** from the notebook toolbar.

![Save File by clicking Save in the notebook toolbar](./media/notebooks-how-to-manage/save-file-1.png)

> [!NOTE]
> The following methods currently do not save changes to notebooks:
>
> - **File Save**, **File Save As...** and **File Save All** commands from the File menu.
> - **File: Save** commands entered in the command palette.

## Change the big data cluster

To change the SQL Server big data cluster for a notebook:

1. Click the **Attach to** menu from the notebook toolbar.

   ![Click the Attach to menu in the notebook toolbar](./media/notebooks-how-to-manage/select-attach-to-1.png)

2. Click a server from the **Attach to** menu.

   ![Select a server from the Attach to menu](./media/notebooks-how-to-manage/select-attach-to-2.png)

## Next steps

For more information about notebooks in Azure Data Studio, see [How to use notebooks in SQL Server 2019](notebooks-guidance.md).
