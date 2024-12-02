---
title: SQL Server docs navigation tips 
description: Tips and tricks for navigating the SQL Server technical documentation - explains such things as the hub page, the table of contents, the header, as well as how to use the breadcrumbs and how to use the version filter. 
ms.date: 10/15/2019
ms.prod: sql
ms.reviewer: ""
ms.custom: ""
ms.topic: conceptual
author: "MashaMSFT"
ms.author: "mathoma"
monikerRange: ">= aps-pdw-2016 || = azuresqldb-current || = azure-sqldw-latest || >= sql-server-2016 || >= sql-server-linux-2017 || = sqlallproducts-allversions"
---
# SQL Server docs navigation guide 

This topic provides some tips and tricks for navigating the SQL Server technical documentation space.  

## Hub page

The SQL Server hub page can be found at [https://aka.ms/sqldocs](https://aka.ms/sqldocs) and is the entry point for finding relevant SQL Server content.

You can always navigate back to this page by selecting **SQL Docs** from the header at the top of every page within the SQL Server technical documentation set: 

![SQL docs in header](media/sql-server-docs-navigation-guide/sql-docs-in-header.png)

## Offline documentation

If you would like to view the SQL Server documentation on an offline system, you have two options to do so. You can either create a PDF wherever you are in the SQL Server technical documentation, or you can download the offline content using [SQL Server offline Help Viewer](sql-server-help-installation.md). 

If you'd like to create a PDF, select the **Download PDF** link found at the bottom of every table of contents.


![Download PDF](media/sql-server-docs-navigation-guide/download-pdf.png)

## TOC symbols 

Entries in the table of contents (TOC) that have a `>` at the end of the entry indicate that you will be taken to technical documentation with a different table of contents. 

![Single carrots in toc](media/sql-server-docs-navigation-guide/single-carrots-in-sql-docs-toc.png)

Entries in the TOC that have a `>>` indicate that you will be taken away from docs.microsoft.com. 

![TOC navigation markers](media/sql-server-docs-navigation-guide/double-carrots-in-sql-docs-toc.png)

If you navigate to one of these pages, you can come back to the main SQL Server technical page, and table of contents, by selecting the "Welcome to SQL Server >" entry found at the top of each of these table of contents. 

![Navigate back to SQL toc](media/sql-server-docs-navigation-guide/navigate-back-to-sql-toc.png)

## TOC search 
On docs.microsoft.com, you can search the content in the table of contents by using the filter search box at the top: 

![Use filter box](media/sql-server-docs-navigation-guide/sql-docs-toc-filter.gif)

## Version filter
The SQL Server technical documentation provides content for several supported versions and flavors of SQL Server. Features can vary between versions and flavors of SQL Server, and as such, sometimes the content itself can vary. 

You can use the [version filter](versioning-system-monikers-ui-sql-server.md) to ensure that you are seeing content for the appropriate version and flavor of SQL Server: 

![SQL Docs version filter](media/sql-server-docs-navigation-guide/sql-docs-version-filter.gif)

Selecting **All SQL** \> **Hide nothing** ensures that all content is visible, and that nothing is hidden by the version filter. The **Hide nothing** option may reveal content relevant to several different versions of SQL Server within the same article, which might be contradictory, unclear, or confusing. As such the [**Hide nothing** option is not recommended for routine use](versioning-system-monikers-ui-sql-server.md#anchor-allsql-hidenothing). 

## Breadcrumbs

Breadcrumbs can be found below the header and above the table of contents, and indicate where the current article is located in the table of contents.  Not only does this help set the context to what type of content you're reading, but it also allows you to navigate back up the table of contents tree:

![SQL Docs breadcrumbs](media/sql-server-docs-navigation-guide/sql-docs-bread-crumbs.gif)

## Article section navigation

The right-hand navigation pane allows you to quickly navigate to sections within an article, as well as identify your location within the article.  

![Right-hand navigation](media/sql-server-docs-navigation-guide/sql-docs-right-hand-navigation.gif)


## Submit docs feedback

If you find something wrong within an article, you can submit feedback to the SQL Content team for that article by scrolling down to the bottom of the page and selecting **Content feedback**.

![Git Issue content feedback](media/sql-server-get-help/git-issues.png)

You can also submit general documentation feedback and suggestions at [https://aka.ms/sqldocsfeedback](https://aka.ms/sqldocsfeedback). 

[!INCLUDE[contribute-to-content](../includes/paragraph-content/contribute-to-content.md)]

![Edit SQL Docs](media/sql-server-docs-navigation-guide/edit-sql-docs.gif)

## Next steps

- Get started with the [SQL Server technical documentation](index.yml).
- For more information about submitting feedback for or getting help with SQL Server, see the [Get help](sql-server-get-help.md) page. 
- To quickly access all the quickstarts and tutorials, see [Educational SQL resources](../sql-server/educational-sql-resources.yml).
