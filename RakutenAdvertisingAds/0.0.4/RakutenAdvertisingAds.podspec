#
#  Be sure to run `pod spec lint RakutenAdvertisingAds.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name             = 'RakutenAdvertisingAds'
  s.version          = '0.0.4'
  s.summary          = 'Rakuten Advertising Ads'

  s.description      = <<-DESC
Global Advertising Platform, mobile sdk for iOS
                    DESC

  s.homepage         = 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAds-iOS-SDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Rakuten Advertising'
  s.source           = { :git => 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAds-iOS-SDK.git', :tag => s.version.to_s }

  s.platform = :ios, "10.0"
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.static_framework = true
  s.frameworks = 'UIKit', 'WebKit'
  s.default_subspec = 'Core'

  s.subspec 'Core' do |subspec|
    subspec.source_files = 'Source/Core/**/*.swift', 'Source/OpenRTB/**/*.swift',  'Source/DynamicNativeAds/**/*.swift'

  end

  s.subspec 'Video' do |subspec|
    subspec.source_files = 'Source/Video/**/*.swift'
    subspec.dependency 'RakutenAdvertisingAds/Core'
    subspec.dependency 'SWXMLHash', '~> 5.0.0'
  end

  s.subspec 'AdMobMediation' do |subspec|
    subspec.source_files = 'Source/Mediation/AdMob/**/*.swift'
    subspec.dependency 'RakutenAdvertisingAds/Core'
    subspec.dependency 'Google-Mobile-Ads-SDK', '~> 7.69.0'
  end

end
