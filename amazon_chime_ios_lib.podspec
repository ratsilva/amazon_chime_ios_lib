#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint amazon_chime_ios_lib.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name         = "amazon_chime_ios_lib"
  s.version      = "1.0.12"
  s.summary      = "Amazon Chime iOS lib"
  s.description  = "Amazon Chime iOS lib"
  s.homepage     = "http://example.com"
  s.license      = "MIT"
  s.author       = { "Your Company" => "email@example.com" }
  s.platform     = :ios, "9.0"

  s.source = { :http => 'https://github.com/ratsilva/amazon_chime_ios_lib/releases/download/1.0.5/AmazonChime.zip' }
  s.requires_arc = true
  s.vendored_frameworks =  "AmazonChime/AmazonChimeSDK.xcframework", "AmazonChime/AmazonChimeSDKMedia.xcframework"
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
