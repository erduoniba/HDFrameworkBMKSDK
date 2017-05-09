Pod::Spec.new do |s|

    s.name         = "HDFrameworkBMKSDK"
    s.module_name  = "HDFrameworkBMKSDK"
    s.version      = "0.0.1"
    s.summary      = "HDFrameworkBMKSDK"
    s.description  = "这个是用到百度地图sdk的一个pod工程,百度地图在该pod工程中"
    s.homepage     = "https://github.com/erduoniba"
    s.author       = { "denglibing" => "13049862397@163.com" }
    s.platform     = :ios, "8.0"
    s.requires_arc = true
    s.license      = { :type => 'MIT'}
    s.source       =  { :git => 'https://github.com/erduoniba/HDFrameworkBMKSDK.git', :tag => "#{s.version}"}

    s.subspec 'HDFrameworkBMKSDK' do |hdBMK|
        hdBMK.source_files = 'HDFrameworkBMKSDK/*.{h,m,mm}'
    end

    s.pod_target_xcconfig = {
#        'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/BaiduMapKit/BaiduMapKit',
#        'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/BaiduMapKit/BaiduMapKit/thirdlibs',
#        'OTHER_LDFLAGS'            => '$(inherited) "-undefined dynamic_lookup" -ObjC',
        'ENABLE_BITCODE'           => 'NO'
    }

    s.subspec 'BaiduMapKit' do |map|
        map.vendored_frameworks = 'HDFrameworkBMKSDK/BaiduMapKit/*.framework'
        map.vendored_libraries = 'HDFrameworkBMKSDK/BaiduMapKit/thirdlibs/*.a'
        map.framework = 'CoreLocation', 'QuartzCore', 'OpenGLES', 'SystemConfiguration', 'CoreGraphics', 'Security', 'CoreTelephony'
        map.libraries = 'sqlite3.0', 'stdc++.6.0.9'
    end

end
