#
# Be sure to run `pod lib lint FlowerSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlowerSdk'
  s.version          = '2.2.2'
  s.summary          = 'Flower SDK for iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Flower SDK for iOS'
  s.homepage         = 'https://anypointmedia.atlassian.net/wiki/x/pAB8eg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anypoint Media' => 'dev@anypointmedia.com' }
  s.source           = { :git => 'https://github.com/anypointmedia/flower-sdk-ios-pod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'

  s.source_files = 'ios-sdk/Sources/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.vendored_frameworks = 'ios-sdk/Frameworks/sdk_core.xcframework'

  s.default_subspec = :none
  s.subspec 'MobileVLCKit3' do |subspec|
    subspec.dependency 'MobileVLCKit', '>3.3.0'
  end
end
