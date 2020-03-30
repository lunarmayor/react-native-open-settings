require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.homepage = "https://github.com/lunarmayor/react-native-open-settings"
  s.authors      = package['author']
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/lunarmayor/react-native-open-settings", :tag => "v#{s.version}" }
  s.source_files  = "RNOpenSettings.{h,m}"

  s.dependency 'React'
end
