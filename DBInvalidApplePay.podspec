
Pod::Spec.new do |s|
  s.name             = 'DBInvalidApplePay'
  s.version          = '1.0.0'
  s.summary          = 'A short description of DBInvalidApplePay.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xujiebing/DBInvalidApplePay'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xujiebing' => 'xujiebing1992@gmail.com' }
  s.source           = { :git => 'https://github.com/xujiebing/DBInvalidApplePay.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DBInvalidApplePay/Classes/**/*.{h,m}'
  s.prefix_header_file = 'DBInvalidApplePay/Classes/DBInvalidApplePay.pch'
  s.resources = 'DBInvalidApplePay/Assets/DBInvalidApplePay.bundle'
  
  s.dependency 'AJKit/UIKit'
  
  # s.resource_bundles = {
  #   'DBInvalidApplePay' => ['DBInvalidApplePay/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
end
