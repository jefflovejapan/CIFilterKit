Pod::Spec.new do |s|

  s.name         = "CIFilterKit"
  s.version      = "0.4.0"
  s.summary      = "A functional, composable wrapper for Core Image."

  s.description  = <<-DESC
                   Inspired by the "Wrapping Core Image" chapter of [Functional Programming in Swift](http://www.objc.io/books/fpinswift/). CIFilterKit makes working with Core Image filters safer and simpler.
                   DESC

  s.homepage     = "https://github.com/jefflovejapan/CIFilterKit.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  s.author             = { "Jeffrey Blagdon" => "jeffblagdon@gmail.com" }
  s.social_media_url   = "http://twitter.com/blagdon"
  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/jefflovejapan/CIFilterKit.git", :tag => s.version.to_s }
  s.source_files  = "CIFilterKit", "CIFilterKit/*"
  s.requires_arc = true

end
