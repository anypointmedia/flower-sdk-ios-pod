#
# Be sure to run `pod lib lint FlowerSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlowerSdk'
  s.version          = '2.3.15'
  s.summary          = 'Flower SDK for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Flower SDK for iOS'
  s.homepage         = 'https://flower-docs.anypoint.tv/docs/category/ios'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Anypoint Media' => 'dev@anypointmedia.com' }
  s.source           = { :git => 'https://github.com/anypointmedia/flower-sdk-ios-pod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'

  s.source_files = 'ios-sdk/Sources/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.vendored_frameworks = 'ios-sdk/Frameworks/sdk_core.xcframework'

  # No MobileVLCKit subspec. The SDK never linked MobileVLCKit - the subspec only added a
  # dependency line for integrators - but `pod trunk push` builds every declared subspec, and
  # MobileVLCKit's own podspec declares `ios 9.0`, which Xcode refuses (supported range is 15.0
  # and up). That failed validation of the whole pod and blocked publishing. Integrators who want
  # the VLC-backed player declare `pod 'MobileVLCKit'` themselves, next to the deployment-target
  # post_install hook their Podfile needs anyway; see the MobileVLCKitLinearTv example.
end
