#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint uuid_helper.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'uuid_helper'
  s.version          = '1.0.0'
  s.summary          = 'A flutter plugin for generating a uuid which is unique for per app'
  s.description      = <<-DESC
A flutter plugin for generating a unique id
                       DESC
  s.homepage         = 'https://github.com/nullptrX/uuid_helper'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'nullptrX' => 'nullptrX@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
