
Pod::Spec.new do |s|
  
  s.name         = "WLThirdUtil"
  s.version      = "0.0.5"
  s.summary      = "A Lib For 三方的封装."
  s.description  = <<-DESC
  WLThirdUtil一个对三方的封装的封装
  DESC
  
  s.homepage     = "https://github.com/StoneStoneStoneWang/WLThirdUtil"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
  s.platform     = :ios, "10.0"
  s.ios.deployment_target = "10.0"
  
  s.swift_version = '5.0'
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  
  s.static_framework = true
  
  s.frameworks = 'UIKit', 'Foundation'
  
  s.source = { :git => "https://github.com/StoneStoneStoneWang/WLThirdUtil.git", :tag => "#{s.version}" }
  
  s.subspec 'JPush' do |jpush|
    jpush.source_files = "Code/JPush/*.{h,m}"
    jpush.dependency 'JPush'
    
  end
  
  s.subspec 'UM' do |um|
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
    end
    
    um.subspec 'Push' do |push|
      push.source_files = 'Code/UM/Push/*.{h,m}'
      push.dependency 'WLThirdUtil/UM/Base'
      push.dependency 'UMCPush'
    end
  end
  
  s.subspec 'Hud' do |hud|
    hud.source_files = 'Code/Hud/*.{h,m}'
    hud.dependency 'SVProgressHUD'
  end
  s.subspec 'Cache' do |cache|
    cache.source_files = 'Code/Cahce/*.{h,m}'
    cache.dependency 'YYCache'
  end
  
  s.subspec 'Ali' do |ali|
    ali.subspec 'ObjCache' do |objCache|
      objCache.source_files = 'Code/Ali/ObjCache/*.{h,m}'
      objCache.dependency 'AliyunOSSiOS'
    end
  end
  
end


