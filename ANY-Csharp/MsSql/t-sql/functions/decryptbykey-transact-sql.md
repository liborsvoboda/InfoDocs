---
title: "DECRYPTBYKEY (Transact-SQL) | Microsoft Docs"
ms.custom: ""
ms.date: "03/06/2017"
ms.prod: sql
ms.prod_service: "database-engine, sql-database"
ms.reviewer: ""
ms.technology: t-sql
ms.topic: "language-reference"
f1_keywords: 
  - "DecryptByKey_TSQL"
  - "DECRYPTBYKEY"
dev_langs: 
  - "TSQL"
helpviewer_keywords: 
  - "symmetric keys [SQL Server], DecryptByKey function"
  - "decryption [SQL Server], keys"
  - "decryption [SQL Server], symmetric keys"
  - "DECRYPTBYKEY function"
ms.assetid: 6edf121f-ac62-4dae-90e6-6938f32603c9
author: VanMSFT
ms.author: vanto
---
# DECRYPTBYKEY (Transact-SQL)
[!INCLUDE[tsql-appliesto-ss2008-asdb-xxxx-xxx-md](../../includes/tsql-appliesto-ss2008-asdb-xxxx-xxx-md.md)]

This function uses a symmetric key to decrypt data.  
  
 ![Topic link icon](../../database-engine/configure-windows/media/topic-link.gif "Topic link icon") [Transact-SQL Syntax Conventions](../../t-sql/language-elements/transact-sql-syntax-conventions-transact-sql.md)  
  
## Syntax  
  
```sql
  
DecryptByKey ( { 'ciphertext' | @ciphertext }   
    [ , add_authenticator, { authenticator | @authenticator } ] )  
```  
  
## Arguments  
*ciphertext*  
A variable of type **varbinary** containing data encrypted with the key.  
  
**\@ciphertext**  
A variable of type **varbinary** containing data encrypted with the key.  
  
 *add_authenticator*  
Indicates whether the original encryption process included, and encrypted, an authenticator together with the plaintext. Must match the value passed to [ENCRYPTBYKEY (Transact-SQL)](./encryptbykey-transact-sql.md) during the data encryption process. *add_authenticator* has an **int** data type.  
  
 *authenticator*  
The data used as the basis for the generation of the authenticator. Must match the value supplied to [ENCRYPTBYKEY (Transact-SQL)](./encryptbykey-transact-sql.md). *authenticator* has a **sysname** data type.  

**\@authenticator**  
A variable containing data from which an authenticator generates. Must match the value supplied to [ENCRYPTBYKEY (Transact-SQL)](./encryptbykey-transact-sql.md). *\@authenticator* has a **sysname** data type.  

## Return Types  
**varbinary**, with a maximum size of 8,000 bytes. `DECRYPTBYKEY` returns NULL if the symmetric key used for data encryption is not open or if *ciphertext* is NULL.  
  
## Remarks  
`DECRYPTBYKEY` uses a symmetric key. The database must have this symmetric key already open. `DECRYPTBYKEY` will allow multiple keys open at the same time. You do not have to open the key immediately before cipher text decryption.  
  
Symmetric encryption and decryption typically operates relatively quickly, and it works well for operations involving large data volumes.  

The `DECRYPTBYKEY` call must happen in the context of the database containing the encryption key. Ensure this by calling `DECRYPTBYKEY` from an object (such as a view, or stored procedure, or function) that resides in the database. 
  
## Permissions  
The symmetric key must already be open in the current session. See [OPEN SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/open-symmetric-key-transact-sql.md) for more information.  
  
## Examples  
  
### A. Decrypting by using a symmetric key  
This example decrypts ciphertext with a symmetric key.  
  
```sql  
-- First, open the symmetric key with which to decrypt the data.  
OPEN SYMMETRIC KEY SSN_Key_01  
   DECRYPTION BY CERTIFICATE HumanResources037;  
GO  
  
-- Now list the original ID, the encrypted ID, and the   
-- decrypted ciphertext. If the decryption worked, the original  
-- and the decrypted ID will match.  
SELECT NationalIDNumber, EncryptedNationalID   
    AS 'Encrypted ID Number',  
    CONVERT(nvarchar, DecryptByKey(EncryptedNationalID))   
    AS 'Decrypted ID Number'  
    FROM HumanResources.Employee;  
GO  
```  
  
### B. Decrypting by using a symmetric key and an authenticating hash  
This example decrypts data originally encrypted together with an authenticator.  
  
```sql  
-- First, open the symmetric key with which to decrypt the data  
OPEN SYMMETRIC KEY CreditCards_Key11  
   DECRYPTION BY CERTIFICATE Sales09;  
GO  
  
-- Now list the original card number, the encrypted card number,  
-- and the decrypted ciphertext. If the decryption worked,   
-- the original number will match the decrypted number.  
SELECT CardNumber, CardNumber_Encrypted   
    AS 'Encrypted card number', CONVERT(nvarchar,  
    DecryptByKey(CardNumber_Encrypted, 1 ,   
    HashBytes('SHA1', CONVERT(varbinary, CreditCardID))))   
    AS 'Decrypted card number' FROM Sales.CreditCard;  
GO  
  
```  

### C. Fail to decrypt when not in the context of database with key
The following example demonstrates that `DECRYPTBYKEY` must be executed in the context of the database that contains the key. The row will not be decrypted when `DECRYPTBYKEY` is executed in the Master database; the result is NULL. 

```sql
-- Create the database
CREATE DATABASE TestingDecryptByKey
GO

USE [TestingDecryptByKey]

-- Create the table and view
CREATE TABLE TestingDecryptByKey.dbo.Test(val VARBINARY(8000) NOT NULL);
GO
CREATE VIEW dbo.TestView AS SELECT CAST(DecryptByKey(val) AS VARCHAR(30)) AS DecryptedVal FROM TestingDecryptByKey.dbo.Test;
GO

-- Create the key, and certificate
USE TestingDecryptByKey;
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'ItIsreallyLong1AndSecured!Passsword#';
CREATE CERTIFICATE TestEncryptionCertificate WITH SUBJECT = 'TestEncryption';
CREATE SYMMETRIC KEY TestEncryptSymmmetricKey WITH ALGORITHM = AES_256, IDENTITY_VALUE = 'It is place for test',
KEY_SOURCE = 'It is source for test' ENCRYPTION BY CERTIFICATE TestEncryptionCertificate;

-- Insert rows into the table
DECLARE @var VARBINARY(8000), @Val VARCHAR(30);
SELECT @Val = '000-123-4567';
OPEN SYMMETRIC KEY TestEncryptSymmmetricKey DECRYPTION BY CERTIFICATE TestEncryptionCertificate;
SELECT @var = EncryptByKey(Key_GUID('TestEncryptSymmmetricKey'), @Val);
SELECT CAST(DecryptByKey(@var) AS VARCHAR(30)), @Val;
INSERT INTO dbo.Test VALUES(@var);
GO

-- Switch to master
USE [Master];
GO

-- Results show the date inserted
SELECT DecryptedVal FROM TestingDecryptByKey.dbo.TestView;

-- Results are NULL because we are not in the context of the TestingDecryptByKey Database
SELECT CAST(DecryptByKey(val) AS VARCHAR(30)) AS DecryptedVal FROM TestingDecryptByKey.dbo.Test;
GO

-- Clean up resources
USE TestingDecryptByKey;

DROP SYMMETRIC KEY TestEncryptSymmmetricKey REMOVE PROVIDER KEY;
DROP CERTIFICATE TestEncryptionCertificate;

Use [Master]
DROP DATABASE TestingDecryptByKey;
GO
```

  
## See Also  
 [ENCRYPTBYKEY &#40;Transact-SQL&#41;](../../t-sql/functions/encryptbykey-transact-sql.md)   
 [CREATE SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/create-symmetric-key-transact-sql.md)   
 [ALTER SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/alter-symmetric-key-transact-sql.md)   
 [DROP SYMMETRIC KEY &#40;Transact-SQL&#41;](../../t-sql/statements/drop-symmetric-key-transact-sql.md)   
 [Encryption Hierarchy](../../relational-databases/security/encryption/encryption-hierarchy.md)   
 [Choose an Encryption Algorithm](../../relational-databases/security/encryption/choose-an-encryption-algorithm.md)  
  
  
