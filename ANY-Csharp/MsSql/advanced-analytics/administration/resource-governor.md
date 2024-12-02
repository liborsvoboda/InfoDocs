---
title: Manage with Resource Governor
description: Learn how to use Resource Governor to manage CPU, physical IO, and memory resources allocation for Python and R workloads in SQL Server Machine Learning Services.
ms.prod: sql
ms.technology: machine-learning
ms.date: 10/02/2019
ms.topic: conceptual
author: dphansen
ms.author: davidph
ms.custom: seo-lt-2019
monikerRange: ">=sql-server-2016||=sqlallproducts-allversions"
---
# Manage Python and R workloads with Resource Governor in SQL Server Machine Learning Services
[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md-winonly](../../includes/appliesto-ss-xxxx-xxxx-xxx-md-winonly.md)]

Learn how to use [Resource Governor](../../relational-databases/resource-governor/resource-governor.md) to manage CPU, physical IO, and memory resources allocation for Python and R workloads in SQL Server Machine Learning Services.

Machine learning algorithms in Python and R are typically compute intensive. Depending on your workload priorities, you might need to increase or decrease the resources available for Machine Learning Services.

For more general information, see [Resource Governor](../../relational-databases/resource-governor/resource-governor.md).

> [!NOTE] 
> Resource Governor is an Enterprise Edition feature.

## Default allocations

By default, the external script runtimes for machine learning are limited to no more than 20% of total machine memory. It depends on your system, but in general, you might find this limit inadequate for serious machine learning tasks such as training a model or predicting on many rows of data. 

## Manage resources with Resource Governor
 
By default, external processes use up to 20% of total host memory on the local server. You can modify the default resource pool to make server-wide changes, with R and Python processes utilizing whatever capacity you make available to external processes.

Alternatively, you can create custom **external resource pools**, with associated workload groups and classifiers, to determine resource allocation for requests originating from specific programs, hosts, or other criteria that you provide. An external resource pool is a type of resource pool introduced in [!INCLUDE[sssql15-md](../../includes/sssql15-md.md)] to help manage the R and Python processes external to the database engine.

1. [Enable resource governance](https://docs.microsoft.com/sql/relational-databases/resource-governor/enable-resource-governor) (it is off by default).

2. Run [CREATE EXTERNAL RESOURCE POOL](https://docs.microsoft.com/sql/t-sql/statements/create-external-resource-pool-transact-sql) to create and configure the resource pool, followed by [ALTER RESOURCE GOVERNOR](https://docs.microsoft.com/sql/t-sql/statements/alter-resource-governor-transact-sql) to implement it.

3. Create a workload group for granular allocations, for example between training and scoring.

4. Create a classifier to intercept calls for external processing.

5. Execute queries and procedures using the objects you created.

For a walkthrough, see [How to create a resource pool for external R and Python scripts](../../advanced-analytics/r/how-to-create-a-resource-pool-for-r.md) for step-by-step instructions.

For an introduction to terminology and general concepts, see [Resource Governor Resource Pool](../../relational-databases/resource-governor/resource-governor-resource-pool.md).

## Processes under resource governance
  
 You can use an *external resource pool* to manage the resources used by the following executables on a database engine instance:

+ Rterm.exe when called locally from SQL Server or called remotely with SQL Server as the remote compute context
+ Python.exe when called locally from SQL Server or called remotely with SQL Server as the remote compute context
+ BxlServer.exe and satellite processes
+ Satellite processes launched by Launchpad, such as PythonLauncher.dll
  
> [!NOTE]
> Direct management of the Launchpad service by using Resource Governor is not supported. Launchpad is a trusted service that can only host launchers provided by Microsoft. Trusted launchers are explicitly configured to avoid consuming excessive resources.
  
## Next steps

+ [Create a resource pool for machine learning](create-external-resource-pool.md)
+ [Resource Governor resource pools](../../relational-databases/resource-governor/resource-governor-resource-pool.md)
