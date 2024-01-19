workspace './MultiProjectCocoaPods.xcworkspace'
platform :ios, '15.0'


# --------------------------------------------------
# Definitions
# --------------------------------------------------

def pods_module_core
  pod 'SDWebImage', '~> 5.0'
  pod 'SwiftyJSON', '~> 4.0'
end

def pods_module_domain
  pod 'SwiftDate', '~> 7.0.0'
end

def pods_module_data
  pod 'Alamofire', '~> 5.8'
end


# --------------------------------------------------
# Targets
# --------------------------------------------------

target 'MultiProjectCocoaPods' do
  use_frameworks!
  pods_module_core
  pods_module_domain
  pods_module_data

  target 'MultiProjectCocoaPodsTests' do
    inherit! :search_paths
  end
  
  target 'MultiProjectCocoaPodsUITests' do
  end
end

# if you don't publish it as podspec, this project acts as a subproject
# so we also need to include all its dependencies to the demo project
target 'ModuleCore' do
  use_frameworks!
  project './ModuleCore/ModuleCore.xcodeproj'
  pods_module_core
end

target 'ModuleDomain' do
  project './ModuleDomain/ModuleDomain.xcodeproj'
  pods_module_domain
end

target 'ModuleData' do
  use_frameworks!
  project './ModuleData/ModuleData.xcodeproj'
  pods_module_data
end


post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
            config.build_settings['PROVISIONING_PROFILE_SPECIFIER'] = ''
            config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
            config.build_settings["IPHONEOS_DEPLOYMENT_TARGET"] = "15.0"
        end
    end
end

