---
title: azdata context reference
titleSuffix: SQL Server big data clusters
description: Reference article for azdata context commands.
author: MikeRayMSFT
ms.author: mikeray
ms.reviewer: mihaelab
ms.date: 11/04/2019
ms.topic: reference
ms.prod: sql
ms.technology: big-data-cluster
---

# azdata context

[!INCLUDE[tsql-appliesto-ssver15-xxxx-xxxx-xxx](../includes/tsql-appliesto-ssver15-xxxx-xxxx-xxx.md)]  

The following article provides reference for the `context` commands in the `azdata` tool. For more information about other `azdata` commands, see [azdata reference](reference-azdata.md)

## Commands
|     |     |
| --- | --- |
[azdata context list](#azdata-context-list) | Lists the available contexts in the user profile.
[azdata context delete](#azdata-context-delete) | Deletes the context with the given namespace from the user profile.
[azdata context set](#azdata-context-set) | Sets the context with the given namespace as the active context in the user profile.
## azdata context list
You may set or delete any of these with `azdata context set` or `azdata context delete`. To login to a new context, use `azdata login`.
```bash
azdata context list [--active -a] 
  ```
### Examples
Lists all available contexts in the user profile.
```bash
azdata context list
```
Lists the active context in the user profile.
```bash
azdata context list --active
```
### Optional Parameters
#### `--active -a`
List only the currently active context.
### Global Arguments
#### `--debug`
Increase logging verbosity to show all debug logs.
#### `--help -h`
Show this help message and exit.
#### `--output -o`
Output format.  Allowed values: json, jsonc, table, tsv.  Default: json.
#### `--query -q`
JMESPath query string. See [http://jmespath.org/](http://jmespath.org/) for more information and examples.
#### `--verbose`
Increase logging verbosity. Use --debug for full debug logs.
## azdata context delete
If the deleted context is active, the user will need to set a new active context. To see contexts available to set or delete `azdata context list`
```bash
azdata context delete --namespace -n 
    ```
### Examples
Deletes contextNamespace from the user profile.
```bash
azdata context delete -n contextNamespace
```
### Required Parameters
#### `--namespace -n`
Namespace of the context which you'd like to delete.
### Global Arguments
#### `--debug`
Increase logging verbosity to show all debug logs.
#### `--help -h`
Show this help message and exit.
#### `--output -o`
Output format.  Allowed values: json, jsonc, table, tsv.  Default: json.
#### `--query -q`
JMESPath query string. See [http://jmespath.org/](http://jmespath.org/) for more information and examples.
#### `--verbose`
Increase logging verbosity. Use --debug for full debug logs.
## azdata context set
To see contexts available to set `azdata context list`. If no contexts are listed, you need to login in order to create a context in your user profile `azdata login`. What you login to will become your active context. If you login to multiple entities, you can then switch between active contexts with this command. To see your currently active context `azdata context list --active`
```bash
azdata context set --namespace -n 
 ```
### Examples
Sets contextNamespace as the active context in the user profile.
```bash
azdata context set -n contextNamespace
```
### Required Parameters
#### `--namespace -n`
Namespace of the context which you'd like to set.
### Global Arguments
#### `--debug`
Increase logging verbosity to show all debug logs.
#### `--help -h`
Show this help message and exit.
#### `--output -o`
Output format.  Allowed values: json, jsonc, table, tsv.  Default: json.
#### `--query -q`
JMESPath query string. See [http://jmespath.org/](http://jmespath.org/) for more information and examples.
#### `--verbose`
Increase logging verbosity. Use --debug for full debug logs.

## Next steps

For more information about other `azdata` commands, see [azdata reference](reference-azdata.md). For more information about how to install the `azdata` tool, see [Install azdata to manage SQL Server 2019 big data clusters](deploy-install-azdata.md).
