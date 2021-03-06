Pod::Spec.new do |s|
  s.name         = "XBIconFont"
  s.version      = "0.4.2"
  s.summary      = "Category that adds iOS 7-like icons convenience methods."
  s.homepage     = "https://github.com/viteinfinite/XBIconFont"
  s.license      = { :type => 'MIT' }
  s.author       = { "Simone Civetta" => "viteinfinite@gmail.com", "Alex Usbergo" => "alexakadrone@gmail.com" }
  s.source       = { :git => "https://github.com/viteinfinite/xbiconfont.git", :tag => "0.4.2" }
  s.platform     = :ios, '5.0'
  s.source_files = '*.{h,m}'
  s.exclude_files = 'Demo'
  s.resources = "Resources/*.ttf"
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
  s.requires_arc = true
end
