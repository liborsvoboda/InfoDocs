---
title: "Deploy: Azure Data Studio notebook"
titleSuffix: SQL Server Big Data Clusters
description: Use a notebook from Azure Data Studio to deploy a big data cluster.
author: MikeRayMSFT
ms.author: mikeray
ms.reviewer: mihaelab
ms.metadata: seo-lt-2019
ms.date: 12/13/2019
ms.topic: conceptual
ms.prod: sql
ms.technology: big-data-cluster
---

# Deploy SQL Server big data cluster with Azure Data Studio notebook

[!INCLUDE[tsql-appliesto-ssver15-xxxx-xxxx-xxx](../includes/tsql-appliesto-ssver15-xxxx-xxxx-xxx.md)]

[!INCLUDE[sql-server-2019](../includes/sssqlv15-md.md)] provides an extension for Azure Data Studio that includes deployment notebooks. A deployment notebook includes documentation and code that you can use in Azure Data Studio to create a SQL Server big data cluster.

Implemented initially as an open-source project, [notebooks](notebooks-guidance.md) have been implemented into [Azure Data Studio](https://docs.microsoft.com/sql/azure-data-studio/download). You can use markdown for text in the text cells and one of the available kernels to write code in the code cells.

You can use notebooks to deploy big data clusters for [!INCLUDE[sql-server-2019](../includes/sssqlv15-md.md)].

## Prerequisites

Following prerequisites are required to also launch the notebook:

* Latest version of [Azure Data Studio Insiders build](https://github.com/microsoft/azuredatastudio#try-out-the-latest-insiders-build-from-master) installed

In addition to above, deploying SQL Server 2019 big data cluster also requires:

* [azdata](deploy-install-azdata.md)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-binary-using-native-package-management)
* [Azure CLI (if deploying in Azure)](https://docs.microsoft.com/cli/azure/install-azure-cli?view=azure-cli-latest)

## Launch the notebook

1. Launch Azure Data Studio.

2. On the **Connections** tab, select the ellipses (**...**), then select **Deploy SQL Server...**.

   ![Deploy SQL Server](media/deploy-notebooks/deploy-notebooks.png)

3. From the deployment options, select **SQL Server Big Data Cluster**.

4. From the **Deployment Target**, under **Options**, select either **New Azure Kubernetes Cluster** or **Existing Azure Kubernetes Service cluster**.

5. Accept the Privacy and license terms

6. This dialog also checks whether the required tools for the chosen type of SQL deployment exist on the host. The **Select** button isn't enabled until the tools check is successful.

7. Select the **Select** button. This action launches the deployment experience.

## Set deployment configuration template

You can customize the settings of the deployment profile by following the instructions below.

### Target configuration template

Select the target configuration template from the available templates. The available profiles are filtered depending on the type of deployment target that's chosen in the previous dialog.

   ![Deployment configuration template Step 1](media/deploy-notebooks/deployment-configuration-template.png)

### Azure settings

If the deployment target is a new AKS, additional information such as Azure Subscription ID, resource group, AKS cluster name, VM count, size, and other additional information are required to create the AKS cluster.

   ![Azure settings](media/deploy-notebooks/azure-settings.png)

If the deployment target is an existing Kubernetes cluster, the wizard prompts for the path to the *kube* config file to import the Kubernetes cluster settings. Ensure the appropriate cluster context is selected where the SQL Server 2019 Big Data Cluster can be deployed.

   ![Target cluster context](media/deploy-notebooks/target-cluster-context.png)

### Cluster, docker, and AD settings

1. Enter the cluster name for the SQL Server 2019 BDC, admin username, and password.
Note: The same account is used for controller and SQL Server.

   ![Cluster settings](media/deploy-notebooks/cluster-settings.png)

2. Enter the Docker settings as appropriate

   ![Docker settings](media/deploy-notebooks/docker-settings.png)

3. If the AD authentication is available, enter the AD settings

   ![Active Directory settings](media/deploy-notebooks/active-directory-settings.png)

### Service settings

This screen has inputs for various settings such as **Scale**, **Endpoints**, **Storage**, and other **Advanced storage settings**. Please enter the appropriate values and select **Next**.

#### Scale settings

Enter the number of instances of each of the components in the big data cluster.

A Spark Instance can be included along with HDFS. It's included in the storage pool or on its own in the Spark pool.

   ![Service settings](media/deploy-notebooks/service-settings.png)

For additional information on each of these components, you can refer to [master instance](concept-master-instance.md), [data pool](concept-data-pool.md), [storage pool](concept-storage-pool.md), or [compute pool](concept-compute-pool.md).

#### Endpoint settings

The default endpoints have been pre-filled. However, they can be changed as appropriate.

   ![Endpoint settings](media/deploy-notebooks/endpoint-settings.png)

#### Storage settings

The storage settings include storage class and claim size for Data and Logs. The settings can be applied across Storage, Data, and SQL Server master pool.

   ![Storage settings](media/deploy-notebooks/storage-settings.png)

#### Advanced storage settings

You can add additional storage settings under **Advanced storage settings**

* Storage pool (HDFS)
* Data pool
* SQL Server Master

   ![Advanced storage settings](media/deploy-notebooks/advanced-storage-settings.png)

### Summary

This screen summarizes all the input that was provided to deploy SQL Server 2019 Big Data Cluster. The config files can be downloaded via the **Save config files** button. Select **Script to Notebook** to script out the entire deployment configuration to a Notebook. Once the Notebook is open, select **Run Cells** to start deploying the SQL Server 2019 BDC to the selected target.

   ![Summary](media/deploy-notebooks/deploy-sql-server-big-data-cluster-on-a-new-AKS-cluster.png)

## Next steps

For more information about deployment, see [deployment guidance for SQL Server big data clusters](deployment-guidance.md).
