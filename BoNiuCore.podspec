Pod::Spec.new do |s|

    s.name         = "BoNiuCore"

    s.version      = "1.0.1"

    s.summary      = "统计工具"

    s.homepage     = "https://github.com/zhao560/BoNiuCore"

    s.license      = "MIT"

    s.author       = { "ZHAO" => "790368411@qq.com" }

    s.platform     = :ios, "10.0"


    s.source       = { :git => "https://github.com/zhao560/BoNiuCore.git", :tag => s.version}

    s.frameworks = 'UIKit', 'WebKit', 'SystemConfiguration', 'CoreTelephony'

    s.vendored_frameworks =  ['Frameworks/WDUTMSDK.framework']

    s.dependency 'SDWebImage'

    s.dependency 'Alamofire'

end
