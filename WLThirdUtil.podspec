
Pod::Spec.new do |spec|
  
  spec.name         = "WLThirdUtil"
  spec.version      = "0.1.4"
  spec.summary      = "A Lib For 三方的封装."
  spec.description  = <<-DESC
  WLThirdUtil一个对三方的封装的封装
  DESC
  
  spec.homepage     = "https://github.com/StoneStoneStoneWang/WLThirdUtil"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
  spec.platform     = :ios, "10.0"
  spec.ios.deployment_target = "10.0"
  
  spec.swift_version = '5.0'
  
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  spec.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  
  spec.static_framework = true
  
  spec.frameworks = 'UIKit', 'Foundation'
  
  spec.source = { :git => "https://github.com/StoneStoneStoneWang/WLThirdUtil.git", :tag => "#{spec.version}" }
  
  spec.subspec 'JPush' do |jpush|
    jpush.source_files = "Code/JPush/*.{h,m}"
    jpush.dependency 'JPush'
  end
  
  spec.subspec 'UM' do |um|
    um.subspec 'Base' do |base|
      
      base.source_files = 'Code/UM/Base/*.{h,m}'
      base.dependency 'UMCAnalytics'
      base.dependency 'UMCCommon'
      base.dependency 'UMCSecurityPlugins'
    end
    um.subspec 'Statistics' do |statistics|
      
      statistics.source_files = 'Code/UM/Statistics/*.{h,m}'
      statistics.dependency 'WLThirdUtil/UM/Base'
      statistics.dependency 'UMCCommon'
      statistics.dependency 'UMCSecurityPlugins'
    end
    
    um.subspec 'Share' do |share|
      share.source_files = 'Code/UM/Share/*.{h,m}'
      share.dependency 'WLThirdUtil/UM/Base'
      share.dependency 'UMCShare/Social/WeChat'
      share.dependency 'UMCShare/Social/QQ'
      share.dependency 'UMCShare/UI'
    end
    
    um.subspec 'Login' do |login|
      login.source_files = 'Code/UM/Login/*.{h,m}'
      login.dependency 'WLThirdUtil/UM/Base'
      login.dependency 'UMCShare/Social/WeChat'
      login.dependency 'UMCShare/Social/QQ'
      login.dependency 'UMCShare/UI'
    end
    
    um.subspec 'Push' do |push|
      push.source_files = 'Code/UM/Push/*.{h,m}'
      push.dependency 'WLThirdUtil/UM/Base'
      push.dependency 'UMCPush'
    end
  end
  
  spec.subspec 'Hud' do |hud|
    hud.source_files = 'Code/Hud/*.{h,m}'
    hud.dependency 'SVProgressHUD'
  end
  spec.subspec 'Cache' do |cache|
    cache.source_files = 'Code/Cahce/*.{h,m}'
    cache.dependency 'YYCache'
  end
  
  spec.subspec 'Ali' do |ali|
    ali.subspec 'ObjCache' do |objCache|
      objCache.source_files = 'Code/Ali/ObjCache/*.{h,m}'
      objCache.dependency 'AliyunOSSiOS'
    end
    
    ali.subspec 'AMap' do |amap|
      amap.source_files = 'Code/Ali/AMap/*.{h,m}'
      amap.dependency 'AMap2DMap-NO-IDFA'
    end
    ali.subspec 'Location' do |location|
      location.source_files = 'Code/Ali/Location/*.{h,m}'
      location.dependency 'AMapLocation-NO-IDFA'
      location.frameworks = 'CoreLocation'
      location.dependency 'WLToolsKit/OpenUrl'
    end
    ali.subspec 'Search' do |search|
      search.source_files = 'Code/Ali/Search/*.{h,m}'
      search.dependency 'AMapSearch-NO-IDFA'
    end
    ali.subspec 'RoutePlan' do |routePlan|
      routePlan.source_files = 'Code/Ali/RoutePlan/*.{h,m}'
      routePlan.dependency 'AMapSearch-NO-IDFA'
    end
  end
end


