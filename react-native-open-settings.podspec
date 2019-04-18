require 'json'
packageJson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-open-settings"
  s.version        = packageJson["version"]
  s.summary        = packageJson["description"]
  s.homepage       = "https://github.com/lunarmayor/react-native-open-settings"
  s.license        = packageJson["license"]
  s.author         = packageJson["author"]
  s.ios.deployment_target = '7.0'
  s.tvos.deployment_target = '9.0'
  s.source         = { :git => "https://github.com/lunarmayor/react-native-open-settings" }
  s.source_files   = 'RNOpenSettings.{h,m}'
  s.preserve_paths = "**/*.js"
  s.dependency 'React'

end
