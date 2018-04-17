
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


  # Or just: s.author    = "zhoubo"
  # s.authors            = { "zhoubo" => "15696564260@163.com" }
  # s.social_media_url   = "http://twitter.com/zhoubo"
    # s.description  = <<-DESC
    DESC
    # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
    # s.license      = "MIT (example)"
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios


  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  # s.exclude_files = "testHUD/Exclude"




  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"



  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
