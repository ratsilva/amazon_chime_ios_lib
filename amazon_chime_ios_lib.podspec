#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amazon_chime_ios_lib.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'amazon_chime_ios_lib'
  s.version          = '1.0.0'
  s.summary          = 'Amazon Chime iOS lib'
  s.description      = 'Amazon Chime iOS lib'
  s.homepage         = 'http://example.com'
  s.license          = 'Apache-2.0'
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.vendored_frameworks = 'AmazonChimeSDKMedia.xcframework', 'AmazonChimeSDK.xcframework'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
