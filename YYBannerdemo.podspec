Pod::Spec.new do |s|
  s.name         = 'YYBannerdemo'
  s.summary      = 'A banner of illusion.'
  s.version      = '1.0'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "yuanshuang" => "1006228982@qq.com" }
  s.social_media_url = 'https://www.jianshu.com/p/974342c2be31'
  s.homepage     = 'https://github.com/sdupidBoby/YYBannerdemo'
  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/sdupidBoby/YYBannerdemo.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'YYBannerView/*.{h,m}'
  
  s.frameworks = 'UIKit'

end
