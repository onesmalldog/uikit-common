Pod::Spec.new do |spec|
	
  spec.name         = "RTCCommon"
  spec.version      = "1.2.0"
  spec.platform     = :ios
  spec.ios.deployment_target = '13.0'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2017 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'RTCCommon'
  spec.xcconfig     = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  spec.swift_version = '5.0'
  
  spec.source = { :git => 'https://github.com/Tencent-RTC/uikit-common.git', :tag => "v#{spec.version.to_s}" }
  spec.source_files = 'Sources/**/**/*.*'
  
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
