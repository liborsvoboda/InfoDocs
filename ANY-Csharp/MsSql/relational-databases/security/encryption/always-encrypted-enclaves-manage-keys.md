---
title: "Manage keys for Always Encrypted with secure enclaves | Microsoft Docs"
ms.custom: ""
ms.date: 10/30/2019
ms.reviewer: vanto
ms.prod: sql
ms.prod_service: "database-engine, sql-database"
ms.technology: security
ms.topic: conceptual
author: jaszymas
ms.author: jaszymas
monikerRange: ">= sql-server-ver15 || = sqlallproducts-allversions"
---
# Manage keys for Always Encrypted with secure enclaves
[!INCLUDE [tsql-appliesto-ssver15-xxxx-xxxx-xxx-winonly](../../../includes/tsql-appliesto-ssver15-xxxx-xxxx-xxx-winonly.md)]

[Always Encrypted with secure enclaves](always-encrypted-enclaves.md) extends key management for [Always Encrypted](always-encrypted-database-engine.md) by introducing enclave-enabled keys: 

- **Enclave-enabled column master key** - a column master key that is created with the `ENCLAVE_COMPUTATIONS` property specified in the column master key metadata object inside the database. 
- **Enclave-enabled column encryption key** - a column encryption key that is encrypted with an enclave-enabled column master key. Only enclave-enabled column encryption keys can be used for computations inside a server-side secure enclave. 

The general guidelines and processes for [managing Always Encrypted keys](overview-of-key-management-for-always-encrypted.md) apply to managing enclave-enabled keys. 

## Managing keys

The following articles discuss the aspects specific to managing enclave-enabled keys.

- [Provision enclave-enabled keys](always-encrypted-enclaves-provision-keys.md)
- [Rotate enclave-enabled keys](always-encrypted-enclaves-rotate-keys.md)

## Next Steps
- [Provision enclave-enabled keys](always-encrypted-enclaves-provision-keys.md)

## See Also  
- [Overview of key management for Always Encrypted](overview-of-key-management-for-always-encrypted.md)
- [CREATE COLUMN MASTER KEY (Transact-SQL)](../../../t-sql/statements/create-column-master-key-transact-sql.md)
