Pod::Spec.new do |s|
  s.name         = 'YYBannerdemo'
  s.summary      = 'A banner of illusion.'
  s.version      = '1.0'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "yuanshuang" => "1006228982@qq.com" }
  s.social_media_url = 'https://www.jianshu.com/p/974342c2be31'
  s.homepage     = 'https://github.com/sdupidBoby/YYBannerdemo'
  s.ios.deployment_target = '8.0'
  s.platform     = :ios, "8.0" #平台及支持的最低版本
  s.source       = { :git => 'https://github.com/sdupidBoby/YYBannerdemo.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'YYBannerView/*.{h,m}'
  
  s.frameworks = 'UIKit'
  s.dependency 'SDWebImage'
  s.dependency 'Masonry'
  #s.vendored_frameworks = ['Vendor/Frameworks/Masonry.framework','Vendor/Frameworks/SDWebImage.framework']
end
