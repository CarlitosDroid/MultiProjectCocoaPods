#  Multi-project app with Cocoapods

## Things to keep in mind

1. To create a project like this and avoid problems, we need to disable the `User Script Sandboxing -> No` in BuildSetting *for every project*.
2. Run `pod init` and `pod install` and then open the generated workspace.
2. Don't forget to specify the ios version in cocoapods (e.g: `platform :ios, '15.0'`) and also change in the Deployment Target for every project.
3. When working with multiple local projects (such as framework, static library) apart from the demo project. We also need to declare the same dependencies/pods (e.g: `ModuleCore`) in the demo projects. 
4. To avoid console logs warnings, always use `use_frameworks!` for project that use framework depedencies.
