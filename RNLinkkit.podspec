require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNLinkkit"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.homepage     = "https://github.com/plaid/plaid-link-examples/tree/master/react-native"
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/julioxavierr/react-native-plaid-link.git", :tag => "master" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "Plaid"
end