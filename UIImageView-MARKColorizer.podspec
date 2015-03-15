Pod::Spec.new do |s|
  s.name             = "UIImageView-MARKColorizer"
  s.version          = "0.1.0"
  s.summary          = "UIImageView category for image colorizing"
  s.homepage         = "https://github.com/markvaldy/UIImageView-MARKColorizer"
  s.license          = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author           = { "Vadym Markov" => "impressionwave@gmail.com" }
  s.social_media_url = 'https://twitter.com/markvaldy'
  s.source           = {
    :git => "https://github.com/markvaldy/UIImageView-MARKColorizer.git",
    :tag => s.version.to_s
  }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.frameworks = 'UIKit'

  s.source_files = 'Source/**/*.{h,m}'

  s.dependency 'UIImage-MARKColorizer', '~> 0.1.1'
end
