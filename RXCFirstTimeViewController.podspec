Pod::Spec.new do |spec|

  spec.name         = "RXCFirstTimeViewController"
  spec.version      = "1.1"
  spec.summary      = "now we can do something when the life cycle function is called for the first time"
  spec.description  = "now we can do something when the life cycle function is called for the first time"
  spec.homepage     = "https://github.com/ruixingchen/RXCFirstTimeViewController"
  spec.license      = "MIT"

  spec.author       = { "ruixingchen" => "rxc@ruixingchen.com" }
  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/ruixingchen/RXCFirstTimeViewController.git", :tag => spec.version.to_s }
  spec.source_files  = "Source/*.{swift}"
  spec.framework = "UIKit"

  spec.requires_arc = true
  spec.swift_versions = "5.1"

end