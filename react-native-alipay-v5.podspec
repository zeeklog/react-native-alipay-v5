require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-alipay-v5"
  # s.name         = "RNAlipay"
  # s.name         = "React-Alipay"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                      Alipay SDK for React Native
                   DESC
  s.homepage     = package['repository']['url']
  # brief license entry:
  s.license      = package["license"]
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/zeeklog/react-native-alipay-v5.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"

  # s.source_files = "**/*.{h,m}"
  s.requires_arc = true

  s.frameworks = "UIKit",
  s.frameworks = "Foundation",
  s.frameworks = "CFNetwork",
  s.frameworks = "SystemConfiguration",
  s.frameworks = "QuartzCore",
  s.frameworks = "CoreGraphics",
  s.frameworks = "CoreMotion",
  s.frameworks = "CoreTelephony",
  s.frameworks = "CoreText",
  s.frameworks = "WebKit"

  # s.dependency "React"
  s.dependency "React-Core"
  s.vendored_frameworks = 'ios/AlipaySDK.xcframework'
  s.library = "c++", "z"
  # ...
  # s.dependency "..."

end

