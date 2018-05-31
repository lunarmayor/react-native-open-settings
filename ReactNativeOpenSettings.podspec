require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'ReactNativeOpenSettings'
  s.version             = package['version']
  s.summary             = package['description']
  s.description         = package['description']
  s.homepage            = 'https://github.com/lunarmayor/react-native-open-settings/blob/master/README.md'
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/lunarmayor/react-native-open-settings.git', :tag => 'v'+s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.dependency 'React'

  s.preserve_paths      = 'README.md', 'LICENSE', 'package.json'
  s.source_files        = '*.{h,m}'
  s.exclude_files       = 'android/**/*'
end
