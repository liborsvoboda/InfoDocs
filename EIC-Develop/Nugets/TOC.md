# [Docs at a glance](index.md)
# [What is NuGet?](what-is-nuget.md)
# Get started
## [Install NuGet client tools](install-nuget-client-tools.md)
## [Install and use a package (dotnet CLI)](quickstart/install-and-use-a-package-using-the-dotnet-cli.md)
## [Install and use a package (Visual Studio)](quickstart/install-and-use-a-package-in-visual-studio.md)
## [Install and use a package (Visual Studio for Mac)](quickstart/install-and-use-a-package-in-visual-studio-mac.md)
## [Create and publish a NET Standard package (dotnet CLI)](quickstart/create-and-publish-a-package-using-the-dotnet-cli.md)
## [Create and publish a NET Standard package (Visual Studio)](quickstart/create-and-publish-a-package-using-visual-studio.md)
## [Create and publish a NET Framework package (Visual Studio)](quickstart/create-and-publish-a-package-using-visual-studio-net-framework.md)
# Consume packages
## [Overview and workflow](consume-packages/overview-and-workflow.md)
## [Find and choose packages](consume-packages/finding-and-choosing-packages.md)
## Install and manage packages
### [Visual Studio](consume-packages/install-use-packages-visual-studio.md)
### [Visual Studio for Mac](/visualstudio/mac/nuget-walkthrough?toc=/nuget/toc.json)
### [dotnet CLI](consume-packages/install-use-packages-dotnet-cli.md)
### [nuget.exe CLI](consume-packages/install-use-packages-nuget-cli.md)
### [Package Manager Console (PowerShell)](consume-packages/install-use-packages-powershell.md)
## Configure NuGet
### Package restore options
#### [Restore packages](consume-packages/package-restore.md)
#### [Troubleshooting](consume-packages/package-restore-troubleshooting.md)
### [Reinstall and update packages](consume-packages/reinstalling-and-updating-packages.md)
### [Manage global packages and cache folders](consume-packages/managing-the-global-packages-and-cache-folders.md)
### [Manage package trust boundaries](consume-packages/installing-signed-packages.md)
### [Work with source control systems](consume-packages/packages-and-source-control.md)
### [Common NuGet configurations](consume-packages/configuring-nuget-behavior.md)
## Reference packages in your project
### [Package references in project files](consume-packages/package-references-in-project-files.md)
### [Migrate packages.config to PackageReference](consume-packages/migrate-packages-config-to-package-reference.md)
### [packages.config](reference/packages-config.md)
# Create packages
## [Overview and workflow](create-packages/overview-and-workflow.md)
## [Create a package (dotnet CLI)](create-packages/creating-a-package-dotnet-cli.md)
## [Create a package (nuget.exe CLI)](create-packages/creating-a-package.md)
## [Create a package (MSBuild)](create-packages/creating-a-package-msbuild.md)
## [Support multiple target frameworks in your project file](create-packages/multiple-target-frameworks-project-file.md)
## [Build a prerelease package](create-packages/prerelease-packages.md)
## [Create a symbol package](create-packages/symbol-packages-snupkg.md)
## Advanced tasks
### [Support multiple target frameworks](create-packages/supporting-multiple-target-frameworks.md)
### [Modify source code and config files](create-packages/source-and-config-file-transformations.md)
### [Select assemblies referenced by projects](create-packages/select-assemblies-referenced-by-projects.md)
### [Set package type](create-packages/set-package-type.md)
### [Create a localized package](create-packages/creating-localized-packages.md)
## Guides for specific content
### [Create a UWP package](guides/create-uwp-packages.md)
### [Create a native package](guides/native-packages.md)
### [Create UI controls as a NuGet package](guides/create-UI-controls.md)
### [Create an analyzer as a NuGet package](guides/analyzers-conventions.md)
### [Create a package for Xamarin with Visual Studio 2017 or 2019](guides/create-packages-for-xamarin.md)
### [Create a package with COM interop assemblies](create-packages/author-packages-with-COM-interop-assemblies.md)
## Sign packages
### [Sign a package](create-packages/sign-a-package.md)
### [Signed package signatures and requirements](reference/signed-packages-reference.md)
# Publish packages
## Publish to NuGet.org
### [Publish a package](nuget-org/publish-a-package.md)
### [API keys](nuget-org/scoped-api-keys.md)
## Publish to a private feed
### [Overview](hosting-packages/overview.md)
### [Azure artifacts](/azure/devops/artifacts/nuget/publish?view=azure-devops)
### [NuGet.Server](hosting-packages/nuget-server.md)
### [Local feeds](hosting-packages/local-feeds.md)
# Concepts
## [Package installation process](concepts/package-installation-process.md)
## [Package versioning](concepts/package-versioning.md)
## [Dependency resolution](concepts/dependency-resolution.md)
# Reference
## [.nuspec](reference/nuspec.md)
## [nuget.config file](reference/nuget-config-file.md)
## [Target frameworks](reference/target-frameworks.md)
## [pack and restore as MSBuild targets](reference/msbuild-targets.md)
## [dotnet CLI](reference/dotnet-Commands.md)
## [nuget.exe CLI reference](reference/nuget-exe-cli-reference.md)
### [add](reference/cli-reference/cli-ref-add.md)
### [config](reference/cli-reference/cli-ref-config.md)
### [delete](reference/cli-reference/cli-ref-delete.md)
### [help or ?](reference/cli-reference/cli-ref-help.md)
### [init](reference/cli-reference/cli-ref-init.md)
### [install](reference/cli-reference/cli-ref-install.md)
### [list](reference/cli-reference/cli-ref-list.md)
### [locals](reference/cli-reference/cli-ref-locals.md)
### [mirror](reference/cli-reference/cli-ref-mirror.md)
### [pack](reference/cli-reference/cli-ref-pack.md)
### [push](reference/cli-reference/cli-ref-push.md)
### [restore](reference/cli-reference/cli-ref-restore.md)
### [setapikey](reference/cli-reference/cli-ref-setapikey.md)
### [sign](reference/cli-reference/cli-ref-sign.md)
### [sources](reference/cli-reference/cli-ref-sources.md)
### [spec](reference/cli-reference/cli-ref-spec.md)
### [update](reference/cli-reference/cli-ref-update.md)
### [verify](reference/cli-reference/cli-ref-verify.md)
### [trusted-signers](reference/cli-reference/cli-ref-trusted-signers.md)
### [Environment variables](reference/cli-reference/cli-ref-environment-variables.md)
### [Long path support](reference/cli-reference/cli-ref-long-path.md)
## [PowerShell reference](reference/powershell-reference.md)
### [Add-BindingRedirect](reference/ps-reference/ps-ref-add-bindingredirect.md)
### [Find-Package](reference/ps-reference/ps-ref-find-package.md)
### [Get-Package](reference/ps-reference/ps-ref-get-package.md)
### [Get-Project](reference/ps-reference/ps-ref-get-project.md)
### [Install-Package](reference/ps-reference/ps-ref-install-package.md)
### [Open-PackagePage](reference/ps-reference/ps-ref-open-packagepage.md)
### [Sync-Package](reference/ps-reference/ps-ref-sync-package.md)
### [Uninstall-Package](reference/ps-reference/ps-ref-uninstall-package.md)
### [Update-Package](reference/ps-reference/ps-ref-update-package.md)
## NuGet Server API
### [Overview](api/overview.md)
### Resources
#### [Autocomplete](api/search-autocomplete-service-resource.md)
#### [Catalog](api/catalog-resource.md)
#### [Package content](api/package-base-address-resource.md)
#### [Package details URL](api/package-details-template-resource.md)
#### [Package metadata](api/registration-base-url-resource.md)
#### [Push and delete](api/package-publish-resource.md)
#### [Push symbol packages](api/symbol-package-publish-resource.md)
#### [Report abuse URL](api/report-abuse-resource.md)
#### [Repository signatures](api/repository-signatures-resource.md)
#### [Search](api/search-query-service-resource.md)
#### [Service index](api/service-index.md)
### [How-to: query for all packages using the API](guides/api/query-for-all-published-packages.md)
### [Rate limits](api/rate-limits.md)
### [nuget.org protocols](api/nuget-protocols.md)
### [tools.json](api/tools-json.md)
## [NuGet client SDK](reference/nuget-client-sdk.md)
## [Errors and Warnings](reference/Errors-and-Warnings.md)
### [NU1000](reference/errors-and-warnings/NU1000.md)
### [NU1001](reference/errors-and-warnings/NU1001.md)
### [NU1002](reference/errors-and-warnings/NU1002.md)
### [NU1003](reference/errors-and-warnings/NU1003.md)
### [NU1100](reference/errors-and-warnings/NU1100.md)
### [NU1101](reference/errors-and-warnings/NU1101.md)
### [NU1102](reference/errors-and-warnings/NU1102.md)
### [NU1103](reference/errors-and-warnings/NU1103.md)
### [NU1104](reference/errors-and-warnings/NU1104.md)
### [NU1105](reference/errors-and-warnings/NU1105.md)
### [NU1106](reference/errors-and-warnings/NU1106.md)
### [NU1107](reference/errors-and-warnings/NU1107.md)
### [NU1108](reference/errors-and-warnings/NU1108.md)
### [NU1201](reference/errors-and-warnings/NU1201.md)
### [NU1202](reference/errors-and-warnings/NU1202.md)
### [NU1203](reference/errors-and-warnings/NU1203.md)
### [NU1401](reference/errors-and-warnings/NU1401.md)
### [NU1500](reference/errors-and-warnings/NU1500.md)
### [NU1501](reference/errors-and-warnings/NU1501.md)
### [NU1502](reference/errors-and-warnings/NU1502.md)
### [NU1503](reference/errors-and-warnings/NU1503.md)
### [NU1601](reference/errors-and-warnings/NU1601.md)
### [NU1602](reference/errors-and-warnings/NU1602.md)
### [NU1603](reference/errors-and-warnings/NU1603.md)
### [NU1604](reference/errors-and-warnings/NU1604.md)
### [NU1605](reference/errors-and-warnings/NU1605.md)
### [NU1608](reference/errors-and-warnings/NU1608.md)
### [NU1701](reference/errors-and-warnings/NU1701.md)
### [NU1801](reference/errors-and-warnings/NU1801.md)
### [NU3000](reference/errors-and-warnings/NU3000.md)
### [NU3001](reference/errors-and-warnings/NU3001.md)
### [NU3002](reference/errors-and-warnings/NU3002.md)
### [NU3003](reference/errors-and-warnings/NU3003.md)
### [NU3004](reference/errors-and-warnings/NU3004.md)
### [NU3005](reference/errors-and-warnings/NU3005.md)
### [NU3006](reference/errors-and-warnings/NU3006.md)
### [NU3007](reference/errors-and-warnings/NU3007.md)
### [NU3008](reference/errors-and-warnings/NU3008.md)
### [NU3009](reference/errors-and-warnings/NU3009.md)
### [NU3010](reference/errors-and-warnings/NU3010.md)
### [NU3011](reference/errors-and-warnings/NU3011.md)
### [NU3012](reference/errors-and-warnings/NU3012.md)
### [NU3013](reference/errors-and-warnings/NU3013.md)
### [NU3014](reference/errors-and-warnings/NU3014.md)
### [NU3015](reference/errors-and-warnings/NU3015.md)
### [NU3016](reference/errors-and-warnings/NU3016.md)
### [NU3017](reference/errors-and-warnings/NU3017.md)
### [NU3018](reference/errors-and-warnings/NU3018.md)
### [NU3019](reference/errors-and-warnings/NU3019.md)
### [NU3020](reference/errors-and-warnings/NU3020.md)
### [NU3021](reference/errors-and-warnings/NU3021.md)
### [NU3022](reference/errors-and-warnings/NU3022.md)
### [NU3023](reference/errors-and-warnings/NU3023.md)
### [NU3024](reference/errors-and-warnings/NU3024.md)
### [NU3025](reference/errors-and-warnings/NU3025.md)
### [NU3026](reference/errors-and-warnings/NU3026.md)
### [NU3027](reference/errors-and-warnings/NU3027.md)
### [NU3028](reference/errors-and-warnings/NU3028.md)
### [NU3029](reference/errors-and-warnings/NU3029.md)
### [NU3030](reference/errors-and-warnings/NU3030.md)
### [NU3031](reference/errors-and-warnings/NU3031.md)
### [NU3032](reference/errors-and-warnings/NU3032.md)
### [NU3033](reference/errors-and-warnings/NU3033.md)
### [NU3034](reference/errors-and-warnings/NU3034.md)
### [NU3035](reference/errors-and-warnings/NU3035.md)
### [NU3036](reference/errors-and-warnings/NU3036.md)
### [NU3037](reference/errors-and-warnings/NU3037.md)
### [NU3038](reference/errors-and-warnings/NU3038.md)
### [NU3040](reference/errors-and-warnings/NU3040.md)
### [NU5000](reference/errors-and-warnings/NU5000.md)
### [NU5001](reference/errors-and-warnings/NU5001.md)
### [NU5002](reference/errors-and-warnings/NU5002.md)
### [NU5003](reference/errors-and-warnings/NU5003.md)
### [NU5004](reference/errors-and-warnings/NU5004.md)
### [NU5005](reference/errors-and-warnings/NU5005.md)
### [NU5007](reference/errors-and-warnings/NU5007.md)
### [NU5008](reference/errors-and-warnings/NU5008.md)
### [NU5009](reference/errors-and-warnings/NU5009.md)
### [NU5010](reference/errors-and-warnings/NU5010.md)
### [NU5011](reference/errors-and-warnings/NU5011.md)
### [NU5012](reference/errors-and-warnings/NU5012.md)
### [NU5013](reference/errors-and-warnings/NU5013.md)
### [NU5014](reference/errors-and-warnings/NU5014.md)
### [NU5015](reference/errors-and-warnings/NU5015.md)
### [NU5016](reference/errors-and-warnings/NU5016.md)
### [NU5017](reference/errors-and-warnings/NU5017.md)
### [NU5018](reference/errors-and-warnings/NU5018.md)
### [NU5019](reference/errors-and-warnings/NU5019.md)
### [NU5020](reference/errors-and-warnings/NU5020.md)
### [NU5021](reference/errors-and-warnings/NU5021.md)
### [NU5022](reference/errors-and-warnings/NU5022.md)
### [NU5023](reference/errors-and-warnings/NU5023.md)
### [NU5024](reference/errors-and-warnings/NU5024.md)
### [NU5025](reference/errors-and-warnings/NU5025.md)
### [NU5026](reference/errors-and-warnings/NU5026.md)
### [NU5027](reference/errors-and-warnings/NU5027.md)
### [NU5028](reference/errors-and-warnings/NU5028.md)
### [NU5029](reference/errors-and-warnings/NU5029.md)
### [NU5030](reference/errors-and-warnings/NU5030.md)
### [NU5031](reference/errors-and-warnings/NU5031.md)
### [NU5032](reference/errors-and-warnings/NU5032.md)
### [NU5033](reference/errors-and-warnings/NU5033.md)
### [NU5034](reference/errors-and-warnings/NU5034.md)
### [NU5035](reference/errors-and-warnings/NU5035.md)
### [NU5036](reference/errors-and-warnings/NU5036.md)
### [NU5037](reference/errors-and-warnings/NU5037.md)
### [NU5046](reference/errors-and-warnings/NU5046.md)
### [NU5047](reference/errors-and-warnings/NU5047.md)
### [NU5048](reference/errors-and-warnings/NU5048.md)
### [NU5100](reference/errors-and-warnings/NU5100.md)
### [NU5101](reference/errors-and-warnings/NU5101.md)
### [NU5102](reference/errors-and-warnings/NU5102.md)
### [NU5103](reference/errors-and-warnings/NU5103.md)
### [NU5104](reference/errors-and-warnings/NU5104.md)
### [NU5105](reference/errors-and-warnings/NU5105.md)
### [NU5106](reference/errors-and-warnings/NU5106.md)
### [NU5107](reference/errors-and-warnings/NU5107.md)
### [NU5108](reference/errors-and-warnings/NU5108.md)
### [NU5109](reference/errors-and-warnings/NU5109.md)
### [NU5110](reference/errors-and-warnings/NU5110.md)
### [NU5111](reference/errors-and-warnings/NU5111.md)
### [NU5112](reference/errors-and-warnings/NU5112.md)
### [NU5114](reference/errors-and-warnings/NU5114.md)
### [NU5115](reference/errors-and-warnings/NU5115.md)
### [NU5116](reference/errors-and-warnings/NU5116.md)
### [NU5117](reference/errors-and-warnings/NU5117.md)
### [NU5118](reference/errors-and-warnings/NU5118.md)
### [NU5119](reference/errors-and-warnings/NU5119.md)
### [NU5120](reference/errors-and-warnings/NU5120.md)
### [NU5121](reference/errors-and-warnings/NU5121.md)
### [NU5122](reference/errors-and-warnings/NU5122.md)
### [NU5123](reference/errors-and-warnings/NU5123.md)
### [NU5124](reference/errors-and-warnings/NU5124.md)
### [NU5125](reference/errors-and-warnings/NU5125.md)
### [NU5127](reference/errors-and-warnings/NU5127.md)
### [NU5128](reference/errors-and-warnings/NU5128.md)
### [NU5129](reference/errors-and-warnings/NU5129.md)
### [NU5130](reference/errors-and-warnings/NU5130.md)
### [NU5131](reference/errors-and-warnings/NU5131.md)
### [NU5500](reference/errors-and-warnings/NU5500.md)
## Archived content
### [project.json management format](archive/project-json.md)
### [project.json and UWP](archive/project-json-and-uwp.md)
### [project.json impact](archive/project-json-impact.md)
# Extensibility
## Extensibility - NuGet plugins
### [NuGet Cross Platform Plugins](reference/extensibility/NuGet-Cross-Platform-Plugins.md)
### [NuGet cross platform authentication plugin](reference/extensibility/nuget-cross-platform-authentication-plugin.md)
### [NuGet credential providers for Visual Studio](reference/extensibility/nuget-credential-providers-for-visual-studio.md)
### [nuget.exe credential providers](reference/extensibility/nuget-exe-credential-providers.md)
## Visual Studio extensibility
### [NuGet API in Visual Studio](visual-studio-extensibility/nuget-api-in-visual-studio.md)
### [Project system support](visual-studio-extensibility/project-system-support.md)
### [Visual Studio templates](visual-studio-extensibility/visual-studio-templates.md)
# Resources
## Policies
### [Governance](policies/governance.md)
### [Ecosystem](policies/ecosystem.md)
### [NuGet.org policies](nuget-org/policies/data-requests.md)
## Release notes
### [Known Issues](release-notes/known-issues.md)
### NuGet 5.x
#### [NuGet 5.4](release-notes/NuGet-5.4.md)
#### [NuGet 5.3](release-notes/NuGet-5.3.md)
#### [NuGet 5.2](release-notes/NuGet-5.2-RTM.md)
#### [NuGet 5.1](release-notes/NuGet-5.1-RTM.md)
#### [NuGet 5.0](release-notes/NuGet-5.0-RTM.md)
### NuGet 4.x
#### [NuGet 4.9 RTM](release-notes/NuGet-4.9-RTM.md)
#### [NuGet 4.8 RTM](release-notes/NuGet-4.8-RTM.md)
#### [NuGet 4.7 RTM](release-notes/NuGet-4.7-RTM.md)
#### [NuGet 4.6 RTM](release-notes/NuGet-4.6-RTM.md)
#### [NuGet 4.5 RTM](release-notes/NuGet-4.5-RTM.md)
#### [NuGet 4.4 RTM](release-notes/NuGet-4.4-RTM.md)
#### [NuGet 4.3 RTM](release-notes/NuGet-4.3-RTM.md)
#### [NuGet 4.0 RTM](release-notes/NuGet-4.0-RTM.md)
#### [NuGet 4.0 RC](release-notes/NuGet-4.0-RC.md)
### NuGet 3.x
#### [NuGet 3.5 RTM](release-notes/NuGet-3.5-RTM.md)
#### [NuGet 3.5 RC](release-notes/NuGet-3.5-RC.md)
#### [NuGet 3.5 Beta2](release-notes/NuGet-3.5-Beta2.md)
#### [NuGet 3.5 Beta](release-notes/NuGet-3.5-Beta.md)
#### [NuGet 3.4.4](release-notes/NuGet-3.4.4.md)
#### [NuGet 3.4.3](release-notes/NuGet-3.4.3.md)
#### [NuGet 3.4.2](release-notes/NuGet-3.4.2.md)
#### [NuGet 3.4.1](release-notes/NuGet-3.4.1.md)
#### [NuGet 3.4](release-notes/NuGet-3.4.md)
#### [NuGet 3.4 RC](release-notes/NuGet-3.4-RC.md)
#### [NuGet 3.3](release-notes/NuGet-3.3.md)
#### [NuGet 3.2.1](release-notes/NuGet-3.2.1.md)
#### [NuGet 3.2](release-notes/NuGet-3.2.md)
#### [NuGet 3.2 RC](release-notes/NuGet-3.2-RC.md)
#### [NuGet 3.1.1](release-notes/NuGet-3.1.1.md)
#### [NuGet 3.1](release-notes/NuGet-3.1.md)
#### [NuGet 3.0.0](release-notes/NuGet-3.0.0.md)
#### [NuGet 3.0 RC2](release-notes/NuGet-3.0-RC2.md)
#### [NuGet 3.0 RC](release-notes/NuGet-3.0-RC.md)
#### [NuGet 3.0 Beta](release-notes/NuGet-3.0-Beta.md)
#### [NuGet 3.0 Preview](release-notes/NuGet-3.0-Preview.md)
### NuGet 2.x
#### [NuGet 2.12](release-notes/NuGet-2.12.md)
#### [NuGet 2.12 RC](release-notes/NuGet-2.12-RC.md)
#### [NuGet 2.9 RC](release-notes/NuGet-2.9-RC.md)
#### [NuGet 2.8.7](release-notes/NuGet-2.8.7.md)
#### [NuGet 2.8.6](release-notes/NuGet-2.8.6.md)
#### [NuGet 2.8.5](release-notes/NuGet-2.8.5.md)
#### [NuGet 2.8.3](release-notes/NuGet-2.8.3.md)
#### [NuGet 2.8.2](release-notes/NuGet-2.8.2.md)
#### [NuGet 2.8.1](release-notes/NuGet-2.8.1.md)
#### [NuGet 2.8](release-notes/NuGet-2.8.md)
#### [NuGet 2.7.2](release-notes/NuGet-2.7.2.md)
#### [NuGet 2.7.1](release-notes/NuGet-2.7.1.md)
#### [NuGet 2.7](release-notes/NuGet-2.7.md)
#### [NuGet 2.6.1-for-WebMatrix](release-notes/NuGet-2.6.1-for-WebMatrix.md)
#### [NuGet 2.6](release-notes/NuGet-2.6.md)
#### [NuGet 2.5](release-notes/NuGet-2.5.md)
#### [NuGet 2.2.1](release-notes/NuGet-2.2.1.md)
#### [NuGet 2.2](release-notes/NuGet-2.2.md)
#### [NuGet 2.1](release-notes/NuGet-2.1.md)
#### [NuGet 2.0](release-notes/NuGet-2.0.md)
### NuGet 1.x
#### [NuGet 1.8](release-notes/NuGet-1.8.md)
#### [NuGet 1.7](release-notes/NuGet-1.7.md)
#### [NuGet 1.6](release-notes/NuGet-1.6.md)
#### [NuGet 1.5](release-notes/NuGet-1.5.md)
#### [NuGet 1.4](release-notes/NuGet-1.4.md)
#### [NuGet 1.3](release-notes/NuGet-1.3.md)
#### [NuGet 1.2](release-notes/NuGet-1.2.md)
#### [NuGet 1.1](release-notes/NuGet-1.1.md)
## [FAQs](resources/nuget-faq.md)
## [Project format](resources/check-project-format.md)
# [NuGet.org](nuget-org/overview-nuget-org.md)