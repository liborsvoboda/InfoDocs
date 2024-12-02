---
title: Install azdata for macOS
titleSuffix: SQL Server big data clusters
description: Learn how to install the azdata tool for installing and managing Big Data Clusters for macOS.
author: MikeRayMSFT 
ms.author: mikeray
ms.reviewer: mihaelab
ms.date: 01/07/2020
ms.topic: conceptual
ms.prod: sql
ms.technology: big-data-cluster
---

# Install `azdata` on macOS

For the macOS platform, you can install the `azdata-cli` with homebrew package manager. The CLI package has been tested on macOS versions: 
* 10.13 High Sierra
* 10.14 Mojave
* 10.15 Catalina

## Install with Homebrew

```bash
brew tap microsoft/azdata-cli-release
brew update
brew install azdata-cli
```

>[!IMPORTANT]
>The `azdata-cli` has a dependency on the Homebrew `python3`, `freetds`, `unixodbc`, `zeromq` packages, and will install them. The `azdata-cli` is guaranteed to be compatible with the latest version of these dependencies published on Homebrew.

## Verify install

```bash
azdata
azdata --version
```

## Update

Update your local repository information and then upgrade the `azdata-cli` package.

```bash
brew tap microsoft/azdata-cli-release
brew update
brew upgrade azdata-cli
```

## Uninstall

Use homebrew to uninstall the `azdata-cli` package.

```bash
brew uninstall azdata-cli
```

## Next steps

For more information about big data clusters, see [What are [!INCLUDE[big-data-clusters-2019](../includes/ssbigdataclusters-ver15.md)]?](big-data-cluster-overview.md).