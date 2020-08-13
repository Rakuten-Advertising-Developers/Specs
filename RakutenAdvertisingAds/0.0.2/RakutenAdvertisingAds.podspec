#
#  Be sure to run `pod spec lint RakutenAdvertisingAds.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name             = 'RakutenAdvertisingAds'
  s.version          = '0.0.2'
  s.summary          = 'Rakuten Advertising Ads'

  s.description      = <<-DESC
Global Advertising Platform, mobile sdk for iOS
                    DESC

  s.homepage         = 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAds-iOS-SDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Rakuten Advertising'
  s.source           = { :git => 'https://github.com/Rakuten-Advertising-Developers/RakutenAdvertisingAds-iOS-SDK.git', :branch => 'develop' }#:tag => s.version.to_s }

  s.platform = :ios, "10.0"
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.source_files = 'Source/Core/**/*.swift', 'Source/OpenRTB/**/*.swift',  'Source/DynamicNativeAds/**/*.swift'

  s.static_framework = true
  s.frameworks = 'UIKit', 'WebKit'
  s.dependency 'SWXMLHash', '~> 5.0.0'

  #s.subspec 'AdMobMediation' do |subspec|
  #  subspec.source_files = 'Source/Mediation/AdMob/**/*.swift'
  #  subspec.dependency 'Google-Mobile-Ads-SDK'
  #end

end
