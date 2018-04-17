
Pod::Spec.new do |s|



  s.name         = "testHUD"
  s.version      = "0.0.1"
  s.summary      = "testHUD for developer to go go go"
  s.homepage     = "https://github.com/cqcycle/MyHUD.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zhoubo" => "15696564260@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/cqcycle/MyHUD.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.source_files  = "testHUD", "testHUD/**/*.{h,m}"
  s.public_header_files = "testHUD/**/*.h"
  s.frameworks = "UIKit", "Foundation"



end
