Pod::Spec.new do |s|

s.name         = "BoNiuCore"
s.version      = "1.0.0"
s.summary      = "搏牛工具"

s.homepage     = "https://github.com/zhao560/BoNiuCore"

s.license      = "MIT"

s.author       = { "ZHAO" => "790368411@qq.com" }

s.platform     = :ios, "9.0"


s.source       = { :git => "https://github.com/zhao560/BoNiuCore.git", :tag => s.version}

s.frameworks = 'UIKit', 'WebKit', 'Foundation'

s.vendored_frameworks =  ['Frameworks/BoNiuCore.framework']

#s.resource = ['Frameworks/RhinoXCore.bundle']

end

