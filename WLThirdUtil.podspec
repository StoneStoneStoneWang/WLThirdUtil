
Pod::Spec.new do |s|

s.name         = "WLThirdUtil"
s.version      = "0.0.2"
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

   um.source_files = 'Code/UM/**/*.{h,m}'
   um.dependency 'UMCPush'
   um.dependency 'UMCAnalytics'
   um.dependency 'UMCSecurityPlugins'
   um.dependency 'UMCShare/Social/WeChat'
   um.dependency 'UMCShare/Social/QQ'
   end

   s.subspec 'Hud' do |hud|

   hud.source_files = 'Code/Hud/*.{h,m}'
   hud.dependency 'SVProgressHUD'

   end
   s.subspec 'Cache' do |cache|

   cache.dependency 'YYCache'

   end

end


