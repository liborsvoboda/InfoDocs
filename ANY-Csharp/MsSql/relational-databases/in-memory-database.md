---
title: "In-memory database systems features and technologies"
ms.date: 10/30/2019
ms.prod: sql
ms.prod_service: "database-engine"
ms.reviewer: ""
ms.technology: 
ms.topic: conceptual
helpviewer_keywords: 
  - "in-memory systems"
  - "in-memory technologies"
  - "in-memory features"
  - "database, in-memory database"
  - "system, in-memory system"
  - "features, in-memory features"
  - "in-memory"
ms.assetid: 11f8017e-5bc3-4bab-8060-c16282cfbac1
author: "briancarrig"
ms.author: "brcarrig"
manager: "amitban"
---

# In-memory database systems and technologies

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

This page is intended to serve as a reference page for in-memory features and technologies within SQL Server. The concept of an in-memory database system refers to a database system that has been designed to take advantage of larger memory capacities available on modern database systems. An in-memory database may be relational or non-relational in nature.

It is assumed often, that the performance advantages of an in-memory database system are mostly owing to it being faster to access data that is resident in memory rather than data that sitting on even the fastest available disk subsystems (by several orders of magnitude). However, many SQL Server workloads can fit their entire working set in available memory. Many in-memory database systems can persist data to disk and may not always be able to fit the entire data set in available memory.

A fast volatile cache that fronts a considerably slower but durable media has been predominant for relational database workloads. It necessitates particular approaches to workload management. The opportunities presented by faster memory transfer rates, greater capacity, or even persistent memory facilitates the development of new features and technologies that can spur new approaches to relational database workload management.

## Hybrid buffer pool

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

[Hybrid buffer pool](../database-engine/configure-windows/hybrid-buffer-pool.md) expands the buffer pool for database files residing on byte-addressable persistent memory storage devices for both Windows and Linux platforms with [!INCLUDE[sql-server-2019](../includes/sssqlv15-md.md)].

## Memory-optimized `tempdb` metadata

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

[!INCLUDE[sql-server-2019](../includes/sssqlv15-md.md)] introduces a new feature that is [memory-optimized tempdb metadata](./databases/tempdb-database.md#memory-optimized-tempdb-metadata), which effectively removes some contention bottlenecks and unlocks a new level of scalability for tempdb-heavy workloads.

## In-memory OLTP

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md](../includes/appliesto-ss-xxxx-xxxx-xxx-md.md)]

[In-memory OLTP](./in-memory-oltp/in-memory-oltp-in-memory-optimization.md) is a database technology available in [!INCLUDE[ssNoVersion](../includes/ssnoversion-md.md)] and [!INCLUDE[ssSDS](../includes/sssds-md.md)] for optimizing performance of transaction processing, data ingestion, data load, and transient data scenarios.

## Configuring persistent memory support for Linux

[!INCLUDE[appliesto-ss-xxxx-xxxx-xxx-md-linuxonly](../includes/appliesto-ss-xxxx-xxxx-xxx-md-linuxonly.md)]

[!INCLUDE[sqlv15](../includes/sssqlv15-md.md)] describes how to configure persistent memory (PMEM) using the `ndctl` utility [persistent memory](../linux/sql-server-linux-configure-pmem.md).

## Persisted log Buffer

Service Pack 1 of [!INCLUDE[ssSQL16](../includes/sssql16-md.md)] introduced a performance optimization for write intensive workloads that were bound by WRITELOG waits. Persistent memory is used to store the log buffer. This buffer, which is small (20 MB per user database), has to be flushed to disk in order for the transactions written to the transaction log to be hardened. For write intensive OLTP workloads, this flushing mechanism can become a bottleneck. With the log buffer on persistent memory, the number of operations required to harden the log is reduced, improving overall transaction times and increasing workload performance. This process was introduced as [Tail of Log Caching]( https://blogs.msdn.microsoft.com/bobsql/2016/11/08/how-it-works-it-just-runs-faster-non-volatile-memory-sql-server-tail-of-log-caching-on-nvdimm/). However, there was a perceived conflict with [Tail Log Backups](./backup-restore/tail-log-backups-sql-server.md) and the traditional understanding that the tail of the log was the portion of the transaction log hardened but not yet backed up. Since the official feature name is Persisted Log Buffer, this is the name used here.

See [Add persisted log buffer to a database](./databases/add-persisted-log-buffer.md).
