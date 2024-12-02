---
title: "Release notes for the JDBC Driver"
ms.custom: ""
ms.date: "03/13/2020"
ms.prod: sql
ms.prod_service: connectivity
ms.reviewer: ""
ms.technology: connectivity
ms.topic: conceptual
ms.assetid: 074f211e-984a-4b76-bb15-ee36f5946f12
author: MightyPen
ms.author: genemi
---
# Release notes for the Microsoft JDBC Driver for SQL Server

This article lists the releases of the _Microsoft JDBC Driver for SQL Server_. For each release version, the changes are named and described.

## <a id="82"></a> 8.2

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 8.2 for SQL Server (zip)](https://go.microsoft.com/fwlink/?linkid=2122433)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 8.2 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122536)**  

Version number: 8.2.0  
Released: January 31, 2020

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a zip file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122433&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122536&clcid=0x40a)  

### Compliance

| Compliance change | Details |
| :---------------- | :------ |
| Download the latest updates for JDBC Driver 8.2. | &bull; &nbsp; [GitHub, 8.2.0](https://github.com/Microsoft/mssql-jdbc/releases/tag/v8.2.0)<br/>&bull; &nbsp; [Maven Central](https://search.maven.org/search?q=g:com.microsoft.sqlserver) |
| Fully compliant with JDBC API Specification 4.2. | The jars in the 8.2 package are named according to Java version compatibility.<br/><br/>For example, the mssql-jdbc-8.2.0.jre11.jar file from the 8.2 package should be used with Java 11. |
| Compatible with Java Development Kit (JDK) version 13.0, 11.0, and 1.8. | Microsoft JDBC Driver 8.2 for SQL Server is now compatible with Java Development Kit (JDK) version 13.0 in addition to JDK 11.0 and 1.8. |
| &nbsp; | &nbsp; |

### Support for JDK 13

Microsoft JDBC Driver 8.2 for SQL Server is now compatible with Java Development Kit (JDK) version 13.0 in addition to JDK 11.0 and 1.8.

### Always Encrypted with secure enclaves

| Always Encrypted change | Details |
| :--------- | :------ |
| Microsoft JDBC Driver 8.2 for SQL Server now supports Always Encrypted with secure enclaves. The details can be found here: Always Encrypted with secure enclaves. |
| More details and sample code. | See [Always Encrypted with Secure Enclaves](../../connect/jdbc/always-encrypted-with-secure-enclaves.md). |
| &nbsp; | &nbsp; |

### Performance Improvement when Retrieving Temporal Datatypes from SQL Server <sup>1</sup>

| Temporal Datatypes change | Details |
| :---------- | :------ |
| Microsoft JDBC Driver 8.2 for SQL Server has improved performance when retrieving temporal datatypes from SQL Server. | This change eliminates unnecessary temporal datatype conversions by eliminating the use of java.util.Calendar wherever possible. |
| The following is a list of the temporal datatypes that have been affected by this performance improvement; in format SQL Server datatype followed by the respective Java mapping. | date (java.sql.Date), datetime (java.sql.Timestamp), datetime2 (java.sql.Timestamp), smalldatetime (java.sql.Timestamp), and time (java.sql.Time). |
| &nbsp; | &nbsp; |

<sup>1</sup> Due to the differences in how time zones are handled between java.util.Calendar and java.time.LocalDateTime API, temporal datatypes with a user provided java.util.Calendar object associated with it or microsoft.sql.DateTimeOffset datatypes do not benefit from this improvement.

### Deployment of mssql-jdbc_auth-\<version>-\<arch>.dll (previously sqljdbc_auth.dll) to Maven Repository

| sqljdbc_auth.dll change | Details |
| :------------------- | :------ |
| Starting from Microsoft JDBC Driver 8.2 for SQL Server, the driver relies on mssql-jdbc_auth-\<version>-\<arch>.dll instead of sqljdbc_auth.dll to use Azure Active Directory Authentication feature. | &nbsp; |
| The DLL has also been uploaded to Maven repository for easier access. | See [this page](https://search.maven.org/artifact/com.microsoft.sqlserver/mssql-jdbc_auth). |
| &nbsp; | &nbsp; |

### Known issues

| Known issues | Details |
| :----------- | :------ |
| When using Always Encrypted with secure enclaves with Java 8. | Users must include BouncyCastle Provider as a dependency OR map/load a security provider which supports the RSASSA-PSS signature algorithm. |
| &nbsp; | &nbsp; |

## Previous releases

## <a id="74"> 7.4.1

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 7.4.1 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122712)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 7.4.1 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122613)**  

Version number: 7.4.1  
Released: August 2, 2019

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122712&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122613&clcid=0x40a)  

### Compliance

| Compliance change | Details |
| :---------------- | :------ |
| Download the latest updates for JDBC Driver 7.4. | &bull; &nbsp; [GitHub, 7.4.1](https://github.com/Microsoft/mssql-jdbc/releases/tag/v7.4.1)<br/>&bull; &nbsp; [Maven Central](https://search.maven.org/search?q=g:com.microsoft.sqlserver) |
| Fully compliant with JDBC API Specification 4.2. | The jars in the 7.4 package are named according to Java version compatibility.<br/><br/>For example, the mssql-jdbc-7.4.1.jre11.jar file from the 7.4 package should be used with Java 11. |
| Compatible with Java Development Kit (JDK) version 12.0, 11.0, and 1.8. | Microsoft JDBC Driver 7.4 for SQL Server is now compatible with Java Development Kit (JDK) version 12.0 in addition to JDK 11.0 and 1.8. |
| &nbsp; | &nbsp; |

### Support for JDK 12

Microsoft JDBC Driver 7.4 for SQL Server is now compatible with Java Development Kit (JDK) version 12.0 in addition to JDK 11.0 and 1.8.

### Introduces NTLM authentication

| NTLM change | Details |
| :--------- | :------ |
| Supports NTLM authentication mode. | This mode of authentication allows both Windows and non-Windows clients to authenticate themselves against SQL Server using Windows domain users. |
| More details and a sample application to use this authentication mode. | See [Connecting using NTLM Authentication](../../connect/jdbc/using-ntlm-authentication-to-connect-to-sql-server.md). |
| &nbsp; | &nbsp; |

### Introduces querying ParameterMetaData via _useFmtOnly_

| useFmtOnly change | Details |
| :---------- | :------ |
| **useFmtOnly** connection property added. | This feature allows users to optionally query ParameterMetaData via the `SET FMTONLY ON` legacy API. This is useful for scenarios where `sp_describe_undeclared_parameters` doesn't perform as expected. |
| More details and limitations. | See [Using useFmtOnly](../../connect/jdbc/using-usefmtonly.md) |
| &nbsp; | &nbsp; |

### Updated _Microsoft Azure Key Vault SDK for Java_, version 1.2.1

| Key Vault SDK change | Details |
| :------------------- | :------ |
| Updated its Maven dependency on _Microsoft Azure Key Vault SDK for Java_ to version 1.2.1. | &nbsp; |
| Removes _Microsoft Azure SDK for Key Vault WebKey_ as a Maven dependency. | &nbsp; |
| Additional details. | See [Feature dependencies of the Microsoft JDBC Driver for SQL Server](../../connect/jdbc/feature-dependencies-of-microsoft-jdbc-driver-for-sql-server.md). |
| &nbsp; | &nbsp; |

### Known issues

| Known issues | Details |
| :----------- | :------ |
| When using NTLM Authentication. | Enabling Extended Protection and encrypted connections at the same time is currently not supported. |
| When using useFmtOnly. | There are some issues with the feature, which are caused by deficiencies in SQL parsing logic. See [Using useFmtOnly](../../connect/jdbc/using-usefmtonly.md) for more details and workaround suggestions. |
| &nbsp; | &nbsp; |

## <a id="72"> 7.2.2

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 7.2.2 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122435)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 7.2.2 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122434)**  

Version number: 7.2.2  
Released: April 16, 2019

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122435&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122434&clcid=0x40a)  

### Compliance

| Compliance change | Details |
| :---------------- | :------ |
| Download the latest updates for JDBC Driver 7.2. | &bull; &nbsp; [GitHub, 7.2.2](https://github.com/Microsoft/mssql-jdbc/releases/tag/v7.2.2)<br/>&bull; &nbsp; [Maven Central](https://search.maven.org/search?q=g:com.microsoft.sqlserver) |
| Fully compliant with JDBC API Specification 4.2. | The jars in the 7.2 package are named according to Java version compatibility.<br/><br/>For example, the mssql-jdbc-7.2.2.jre11.jar file from the 7.2 package should be used with Java 11. |
| Compatible with Java Development Kit (JDK) version 11.0 in addition to JDK 1.8. | Microsoft JDBC Driver 7.2 for SQL Server is now compatible with Java Development Kit (JDK) version 11.0 in addition to JDK 1.8. |
| &nbsp; | &nbsp; |

> [!NOTE]
> An issue with SQL statement parsing was found in the JDBC 7.2 Release To Web (RTW) driver released on January 31, 2019. The change was rolled back, and new jars (version 7.2.1) were released on February 11, 2019.
>
> Another update was made on the driver to fix issues with ActivityIDs not getting cleaned up properly. The new jars (version 7.2.2) were released on April 16, 2019.
>
> We recommend updating your projects to use the 7.2.2 release jars. For more information, view release notes for [GitHub, 7.2.1](https://github.com/Microsoft/mssql-jdbc/releases/tag/v7.2.1) and [GitHub, 7.2.2](https://github.com/Microsoft/mssql-jdbc/releases/tag/v7.2.2).

### Active Directory _Managed Service Identity_ (MSI) authentication

| MSI change | Details |
| :--------- | :------ |
| Supports Active Directory Managed Service Identity (MSI) authentication mode. | This mode of authentication is applicable on Azure Resources with support for "Identity" feature enabled.<br/><br/>Both types of Managed System Identities (MSI) are supported by the driver to acquire **accessToken** for establishing secure connection. |
| More details and a sample application to use this authentication mode. | See [Connecting using Azure Active Directory Authentication](../../connect/jdbc/connecting-using-azure-active-directory-authentication.md). |
| &nbsp; | &nbsp; |

### Introduces _Open Service Gateway Initiative_ (OSGi) support

| OSGi change | Details |
| :---------- | :------ |
| **DataSourceFactory** implementation added. | &bull; &nbsp; `org.osgi.service.jdbc.DataSourceFactory`<br/>&bull; &nbsp; `com.microsoft.sqlserver.jdbc.osgi.SQLServerDataSourceFactory` |
| **Activator** implementation added. | &bull; &nbsp; `org.osgi.framework.BundleActivator`<br/>&bull; &nbsp; `com.microsoft.sqlserver.jdbc.osgi.Activator` |
| &nbsp; | &nbsp; |

### Introduces _SQLServerError_ APIs

| Error API change | Details |
| :--------------- | :------ |
| SQLServerError API introduced. | Getter APIs to retrieve additional details about the error generated from the server.<br/><br/>&bull; &nbsp; `SQLServerException.getSQLServerError()`<br/>&bull; &nbsp; `SQLServerError` |
| Additional details. | See [Handling Errors](../../connect/jdbc/handling-errors.md). |
| &nbsp; | &nbsp; |

### Updated _Microsoft Azure Active Directory Authentication Library (ADAL4J) for Java_, version 1.6.3

| ADAL4J change | Details |
| :------------ | :------ |
| Updated its Maven dependency on ADAL4J to version 1.6.3. | &nbsp; |
| Introduces _Java Client Runtime for AutoRest_ as a Maven dependency, version 1.6.5. | &nbsp; |
| Additional details. | See [Feature dependencies of the Microsoft JDBC Driver for SQL Server](../../connect/jdbc/feature-dependencies-of-microsoft-jdbc-driver-for-sql-server.md). |
| &nbsp; | &nbsp; |

### Updated _Microsoft Azure Key Vault SDK for Java_, version 1.2.0

| Key Vault SDK change | Details |
| :------------------- | :------ |
| Updated its Maven dependency on _Microsoft Azure Key Vault SDK for Java_ to version 1.2.0. | &nbsp; |
| Introduces _Microsoft Azure SDK for Key Vault WebKey_ as a Maven dependency, version 1.2.0. | &nbsp; |
| Additional details. | See [Feature dependencies of the Microsoft JDBC Driver for SQL Server](../../connect/jdbc/feature-dependencies-of-microsoft-jdbc-driver-for-sql-server.md). |
| &nbsp; | &nbsp; |

### Known Issues

| Known issues | Details |
| :----------- | :------ |
| Parameterized queries, in certain cases. | An update of the 7.2.0 version, v7.2.1, was released in February 2019 to address this issue. |
| Cleaning up of ActivityIds. | An update of the 7.2.1 version, v7.2.2, was released in April 2019 to address this issue. |
| &nbsp; | &nbsp; |

## 7.0

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 7.0 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122713)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 7.0 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122614)**  

Version number: 7.0.0  
Released: July 31, 2018

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122713&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122614&clcid=0x40a)  

Microsoft JDBC Driver 7.0 for SQL Server is fully compliant with JDBC API Specification 4.2. The jars in the 7.0 package are named according to Java version compatibility. For example, the mssql-jdbc-7.0.0.jre10.jar file from the 7.0 package should be used with Java 10.

### Support for JDK 10

Microsoft JDBC Driver 7.0 for SQL Server is now compatible with Java Development Kit (JDK) version 10.0 in addition to JDK 1.8. This update also exposes the driver's `Automatic-Module-Name` as `com.microsoft.sqlserver.jdbc` through its MANIFEST file.

### Support for spatial datatypes

Microsoft JDBC Driver 7.0 for SQL Server now provides support for SQL Server spatial datatypes Geography and Geometry. For more information about spatial datatype APIs and how to use them, see [Using spatial datatypes](../../connect/jdbc/use-spatial-datatypes.md).

### Implementation for JDBC 4.3 introduced java.sql.Connection APIs beginRequest() and endRequest()

Microsoft JDBC Driver 7.0 for SQL Server now implements `beginRequest()` and `endRequest()` APIs from the `java.sql.Connection` class. These APIs were introduced with JDBC 4.3 specifications and JDK 9. For more information about the driver's implementation of these APIs, see [JDBC 4.3 compliance for the JDBC Driver](../../connect/jdbc/jdbc-4-3-compliance-for-the-jdbc-driver.md).

### Support for SQL Data Discovery and Classification

Microsoft JDBC Driver 7.0 for SQL Server provides support for SQL Data Discovery and Classification with any target database that supports this feature. The driver now exposes `SQLServerResultSet.getSensitivityClassification()` APIs to extract this information from the fetched `ResultSet`.

For more information about how to use this feature with the JDBC Driver, see the sample in [SQL Data Discovery and Classification](../../connect/jdbc/data-discovery-classification-sample.md).

### Added connection property: useBulkCopyForBatchInsert

Microsoft JDBC Driver 7.0 for SQL Server introduces a new connection property, `useBulkCopyForBatchInsert`. This property is supported only for Azure SQL Data Warehouse.

This property is disabled by default. You can enable it to increase performance of user applications when you're pushing large amounts data to Azure SQL Data Warehouse. Enabling this property changes the behavior of batch insert operations to switch to bulk copy operations with user-provided data. For more information about this property and its limitations, see [Using Bulk Copy API for batch insert operation](../../connect/jdbc/use-bulk-copy-api-batch-insert-operation.md).

### Added connection property: cancelQueryTimeout

Microsoft JDBC Driver 7.0 for SQL Server introduces a new connection property, `cancelQueryTimeout`, to cancel `queryTimeout` on `java.sql.Connection` and `java.sql.Statement` objects.

### Added Azure Key Vault Provider constructors

Microsoft JDBC Driver 7.0 for SQL Server reintroduces a previously removed constructor, for `SQLServerColumnEncryptionAzureKeyVaultProvider`. It allowed authentication through a custom method implemented over `SQLServerKeyVaultAuthenticationCallback` to fetch an access token.

The new constructors have the following definition:

```java
/* This constructor is added to provide backward compatibility with 6.0
* version of the driver. It is marked deprecated for removal in the next
* stable release.
*/
@Deprecated
public SQLServerColumnEncryptionAzureKeyVaultProvider(
        SQLServerKeyVaultAuthenticationCallback authenticationCallback,
        ExecutorService executorService) throws SQLServerException;

/*New constructor to replace the above constructor*/
public SQLServerColumnEncryptionAzureKeyVaultProvider(
            SQLServerKeyVaultAuthenticationCallback authenticationCallback) throws SQLServerException;
```

### Updated "Microsoft Azure Active Directory Authentication Library (ADAL4J) for Java" version: 1.6.0

Microsoft JDBC Driver 7.0 for SQL Server has updated its Maven dependency on "Microsoft Azure Active Directory Authentication Library (ADAL4J) for Java" to version 1.6.0. For more information about dependencies, see [Feature dependencies of the Microsoft JDBC Driver for SQL Server](../../connect/jdbc/feature-dependencies-of-microsoft-jdbc-driver-for-sql-server.md).

## 6.4

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 6.4 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122436)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 6.4 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122537)**  

Version number: 6.4.0  
Released: February 27, 2018

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122436&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122537&clcid=0x40a)  

Microsoft JDBC Driver 6.4 for SQL Server is fully compliant with JDBC specifications 4.1 and 4.2. The jars in the 6.4 package are named according to Java version compatibility. For example, the mssql-jdbc-6.4.0.jre8.jar file from the 6.4 package must be used with Java 8.

### Support for JDK 9

The driver supports JDK version 9.0 in addition to JDK 8.0 and 7.0.

### JDBC 4.3 compliance

The driver supports the Java Database Connectivity API 4.3 specification, in addition to 4.1 and 4.2. The JDBC 4.3 API methods are added but not implemented yet. For details, see [JDBC 4.3 compliance for the JDBC Driver](../../connect/jdbc/jdbc-4-3-compliance-for-the-jdbc-driver.md).

### Added connection property: sslProtocol

A new connection property lets users specify the TLS protocol keyword. Possible values are: "TLS", "TLSv1", "TLSv1.1", and "TLSv1.2". For details, see [SSLProtocol](https://github.com/Microsoft/mssql-jdbc/wiki/SSLProtocol).

### Deprecated connection property: fipsProvider

The connection property `fipsProvider` is removed from the list of accepted connection properties. For details, see the related [GitHub pull request](https://github.com/Microsoft/mssql-jdbc/pull/460).

### Added connection properties for specifying a custom TrustManager

The driver now supports specifying a custom TrustManager with added `trustManagerClass` and `trustManagerConstructorArg` connection properties. You can dynamically specify a set of certificates that are trusted on a per-connection basis without modifying the global settings for the Java virtual machine (JVM) environment.

### Added support for datetime/smallDatetime in table-valued parameters

The driver now supports the datatypes `datetime` and `smallDatetime` when you're using table-valued parameters (TVPs).

### Added support for the sql_variant datatype

The JDBC Driver now supports `sql_variant` datatypes to be used with SQL Server. The `sql_variant` datatype is also supported with features such as TVPs and bulk copy with the following limitations:

* **For date values**:

  When you're using a TVP to populate a table that contains `datetime`, `smalldatetime`, or `date` values stored in a `sql_variant` column, calling the `getDateTime()`, `getSmallDateTime()`, or `getDate()` method on the result set doesn't work and throws the following exception:

  `java java.lang.String cannot be cast to java.sql.Timestamp`

  As a workaround, use the `getString()` or `getObject()` method instead.

* **Using a TVP with sql_variant for null values**:
  
  If you're using a TVP to populate a table and send a NULL value to the `sql_variant` column type, you'll encounter an exception. Inserting a NULL value with the column type `sql_variant` in a TVP is currently not supported.

### Implemented prepared statement metadata caching

The JDBC Driver has implemented prepared statement metadata caching for performance improvement. The driver now supports caching prepared statement metadata in the driver with `disableStatementPooling` and `statementPoolingCacheSize` connection properties. This feature is disabled by default. For more information, see [Prepared statement metadata caching for the JDBC Driver](../../connect/jdbc/prepared-statement-metadata-caching-for-the-jdbc-driver.md).

### Added support for Azure AD Integrated Authentication on Linux/Mac

The JDBC Driver now supports Azure Active Directory (Azure AD) Integrated Authentication on all supported operating systems (Windows, Linux, and Mac) with Kerberos. Alternatively, on Windows operating systems, users can authenticate with mssql-jdbc_auth-\<version>-\<arch>.dll.

### Updated "Microsoft Azure Active Directory Authentication Library (ADAL4J) for Java" version: 1.4.0

The JDBC Driver has updated its Maven dependency on "Microsoft Azure Active Directory Authentication Library (ADAL4J) for Java" to version 1.4.0. For more information about dependencies, see [Feature dependencies of the Microsoft JDBC Driver for SQL Server](../../connect/jdbc/feature-dependencies-of-microsoft-jdbc-driver-for-sql-server.md).

## 6.2

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 6.2 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122616)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 6.2 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122615)**  

Version number: 6.2.2  
Released: September 29, 2017

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122616&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122615&clcid=0x40a)  

Microsoft JDBC Driver 6.2 for SQL Server is fully compliant with JDBC specifications 4.1 and 4.2. The jars in the 6.2 package are named according to Java version compatibility. For example, the mssql-jdbc-6.2.2.jre8.jar file from the 6.2 package is recommended for use with Java 8.

> [!NOTE]  
> An issue with the metadata caching improvement was found in the JDBC 6.2 RTW released on June 29, 2017. The improvement was rolled back and new jars (version 6.2.1) were released on July 17, 2017.
>
> Another improvement upgraded the Azure Key Vault dependent library version to 1.0.0, and new jars (version 6.2.2) were released on October 19, 2017.
>
> Download the latest updates for JDBC Driver 6.2 via the above links, [GitHub](https://github.com/Microsoft/mssql-jdbc/releases/tag/v6.2.2), or [Maven Central](https://search.maven.org/search?q=g:com.microsoft.sqlserver). Please update your projects to use the 6.2.2 release jars. For more information, view release notes for [6.2.1](https://github.com/Microsoft/mssql-jdbc/releases/tag/v6.2.1) and [6.2.2](https://github.com/Microsoft/mssql-jdbc/releases/tag/v6.2.2).

### Azure AD support for Linux

Connect your Linux applications to Azure SQL Database by using Azure AD authentication via username/password and access token methods.

### FIPS-enabled JVMs

The JDBC Driver can now be used on JVMs that run in Federal Information Processing Standard (FIPS) 140 compliance mode to meet federal standards on compliance.

### Kerberos authentication improvements

The JDBC Driver now has support for:

* Principal/password method for applications where the Kerberos configuration can't be modified or can't retrieve a new token or keytab. This method can be used for authenticating to a SQL Server instance that allows only Kerberos authentication.
* Cross-realm authentication that uses Kerberos Integrated Authentication without explicitly setting the server SPN. The driver now automatically computes the realm even when it isn't provided.
* Kerberos Constrained Delegation by accepting impersonated user credentials as a GSS credential object via data source. This impersonated credential is then used to establish a Kerberos connection.

### Added timeouts

The JDBC Driver now supports the following configurable timeouts. You can change them based on your application's needs.

* Query timeout to control the number of seconds to wait before a timeout occurs when you're running a query.
* Socket timeout to specify the number of milliseconds to wait before a timeout occurs on a socket read or accept.

## 6.1

Version number: 6.1.0  
Released: November 17, 2016  

Microsoft JDBC Driver 6.1 for SQL Server is fully compliant with JDBC specifications 4.1 and 4.2. This is the initial open-source release of the JDBC Driver. The source code can be found at the [GitHub v6.1.0 tag](https://github.com/microsoft/mssql-jdbc/releases/tag/v6.1.0). It builds the mssql-jdbc-6.1.0.jre8.jar and mssql-jdbc-6.1.0.jre7.jar files, which correspond to Java version compatibility.

## 6.0

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 6.0 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122617)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 6.0 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122714)**  

Version number: 6.0.8112  
Released: January 17, 2017

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122617&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122714&clcid=0x40a)  

Microsoft JDBC Driver 6.0 for SQL Server is fully compliant with JDBC specifications 4.1 and 4.2. The jars in the 6.0 package are named according to their compliance with the JDBC API version. For example, the sqljdbc42.jar file from the 6.0 package is JDBC API 4.2 compliant. Similarly, the sqljdbc41.jar file is compliant with JDBC API 4.1.

To ensure that you have the right sqljdbc42.jar or sqljdbc41.jar file, run the following lines of code. If the output is "Driver version: 6.0.7507.100", you have the JDBC Driver 6.0 package.

```java
Connection conn = DriverManager.getConnection("jdbc:sqlserver://<server>;user=<user>;password=<password>;");
System.out.println("Driver version: " + conn.getMetaData().getDriverVersion());
```

### Always Encrypted

The driver supports the Always Encrypted feature in SQL Server 2016. This feature ensures that sensitive data is never seen in plaintext in a SQL Server instance. Always Encrypted works by transparently encrypting the data in the application, so that SQL Server will handle only the encrypted data and not plaintext values. Even if the SQL Server instance or the host machine is compromised, all an attacker can get is ciphertext of sensitive data. For details, see [Using Always Encrypted with the JDBC Driver](../../connect/jdbc/using-always-encrypted-with-the-jdbc-driver.md).

### Internationalized domain names

The driver supports internationalized domain names (IDNs) for server names. For details, see "Using International Domain Names" in the [International features of the JDBC Driver](../../connect/jdbc/international-features-of-the-jdbc-driver.md) article.

### Parameterized queries

The driver now supports retrieving parameter metadata with prepared statements for complex queries, such as subqueries and/or joins. Note that this improvement is available only when you're using SQL Server 2012 and newer versions.

### Azure Active Directory

Azure AD authentication is a mechanism of connecting to Azure SQL Database v12 by using identities in Azure AD. Use Azure AD authentication to centrally manage identities of database users and as an alternative to SQL Server authentication.

You can use JDBC Driver 6.0 to specify your Azure AD credentials in the JDBC connection string to connect to Azure SQL Database. For details, see the authentication property in the [Setting the connection properties](../../connect/jdbc/setting-the-connection-properties.md) article.

### Table-valued parameters

TVPs provide an easy way to marshal multiple rows of data from a client application to SQL Server without requiring multiple round trips or special server-side logic for processing the data. You can use TVPs to encapsulate rows of data in a client application and send the data to the server in a single parameterized command. The incoming data rows are stored in a table variable that you can then operate on by using Transact-SQL. For details, see [Using table-valued parameters](../../connect/jdbc/using-table-valued-parameters.md).

### Always On Availability Groups

The driver now supports transparent connections to Always On Availability Groups. The driver quickly discovers the current Always On topology of your server infrastructure and connects to the current active server transparently.

## 4.2

**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 4.2 for SQL Server (self-extracting exe)](https://go.microsoft.com/fwlink/?linkid=2122538)**  
**[![Download](../../ssms/media/download-icon.png) Download Microsoft JDBC Driver 4.2 for SQL Server (tar.gz)](https://go.microsoft.com/fwlink/?linkid=2122437)**  

Version number: 4.2.8112  
Released: August 24, 2015

If you need to download the driver in a language other than the one detected for you, you can use these direct links.  
For the driver in a self-extracting exe file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122538&clcid=0x40a)  
For the driver in a tar.gz file: [Chinese (Simplified)](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x804) | [Chinese (Traditional)](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x404) | [English (United States)](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x409) | [French](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x40c) | [German](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x407) | [Italian](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x410) | [Japanese](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x411) | [Korean](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x412) | [Portuguese (Brazil)](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x416) | [Russian](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x419) | [Spanish](https://go.microsoft.com/fwlink/?linkid=2122437&clcid=0x40a)  

Microsoft JDBC Driver 4.2 for SQL Server is fully compliant with JDBC specifications 4.1 and 4.2. The jars in the 4.2 package are named according to their compliance with the JDBC API version. For example, the sqljdbc42.jar file from the 4.2 package is JDBC API 4.2 compliant. Similarly, the sqljdbc41.jar file is compliant with JDBC API 4.1.

To ensure you have the right sqljdbc42.jar or sqljdbc41.jar file, run the following lines of code. If the output is "Driver version: 4.2.6420.100", you have the JDBC Driver 4.2 package.

```java
Connection conn = DriverManager.getConnection("jdbc:sqlserver://<server>;user=<user>;password=<password>;");
System.out.println("Driver version: " + conn.getMetaData().getDriverVersion());
```

### Support for JDK 8

The driver supports JDK version 8.0 in addition to JDK 7.0, 6.0, and 5.0.

### JDBC 4.1 and 4.2 compliance

The driver supports Java Database Connectivity API 4.1 and 4.2 specifications, in addition to 4.0. For details, see [JDBC 4.1 compliance for the JDBC Driver](../../connect/jdbc/jdbc-4-1-compliance-for-the-jdbc-driver.md) and [JDBC 4.2 compliance for the JDBC Driver](../../connect/jdbc/jdbc-4-2-compliance-for-the-jdbc-driver.md).

### Bulk copy

You use the bulk copy feature to quickly copy large amounts of data into tables or views in SQL Server databases. For details, see [Using bulk copy with the JDBC Driver](../../connect/jdbc/using-bulk-copy-with-the-jdbc-driver.md).

### XA transaction rollback option

The driver has new timeout options for existing automatic rollback of unprepared transactions. For details, see [Understanding XA transactions](../../connect/jdbc/understanding-xa-transactions.md).

### New Kerberos principal connection property

The driver uses a new connection property to facilitate flexibility with Kerberos connections. For details, see [Using Kerberos Integrated Authentication to connect to SQL Server](../../connect/jdbc/using-kerberos-integrated-authentication-to-connect-to-sql-server.md).

## 4.1

Version number: 4.1.8112  
Released: December 12, 2014

### Support for JDK 7

The driver supports JDK version 7.0 in addition to JDK 6.0 and 5.0.

## Itanium not supported for JDBC Driver applications

Microsoft JDBC Driver for SQL Server applications aren't supported to run on an Itanium computer.

## See also

[Overview of the JDBC Driver](../../connect/jdbc/overview-of-the-jdbc-driver.md)
