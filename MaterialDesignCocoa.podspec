Pod::Spec.new do |s|
  s.name             = "MaterialDesignCocoa"
  s.version          = "0.0.1"
  s.summary          = "Material Design UI Components for Cocoa."
  s.description      = <<-DESC
                       Material Design UI Components for Cocoa.
                       I hope that Google will release material desined UI Components for iOS.
                       This library includes these components only.
                       - Card
                       - UIColor extensions
                       - UIFont extensions
                       DESC
  s.homepage         = "http://github.com/akiroom/"
  s.screenshots      = "https://raw.githubusercontent.com/akiroom/MaterialDesignCocoa/master/Screenshots/card-and-color.png"
  s.license          = 'MIT'
  s.author           = { "Hiroki Akiyama" => "aki-hiroki@nifty.com" }
  s.source           = { :git => "https://github.com/akiroom/MaterialDesignCocoa.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akiroom'

  s.requires_arc = true

  s.source_files = 'Classes'
  s.resources = 'Assets/*.png'

  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'JSONKit', '~> 1.4'
end
