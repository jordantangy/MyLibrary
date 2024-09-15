Pod::Spec.new do |s|
  s.name = 'MyLibrary'
  s.version = '4.2.0'
  s.summary = 'MyLibrary'
  s.description = s.summary
  s.license = 'Backbase License'
  s.homepage = 'http://www.backbase.com/home'
  s.author = 'Backbase B.V.'


  s.platform = :ios
  s.ios.deployment_target = '15.0'
  s.scheme = { :code_coverage => false }


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source = { git: 'https://github.com/jordantangy/MyLibrary.git' }
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  # ――― Assets ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #


  # ――― Dependencies ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #



  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/**/*'
    test_spec.exclude_files = 'Tests/Info.plist'
    test_spec.resources = 'TestResources/**/*'


    test_spec.dependency 'RxNimble', '>= 5.0'
    test_spec.dependency 'RxNimble/RxTest', '>= 5.0'
    test_spec.dependency 'Quick', '~> 5.0'
    test_spec.scheme = {
      :code_coverage => true
    }
  end




#    test_spec.requires_app_host = true
#    test_spec.app_host_name = 'RetailPocketsJourney/App'
#    test_spec.dependency 'RetailPocketsJourney/App'


    test_spec.dependency 'RxNimble', '~> 4.7'
    test_spec.dependency 'RxNimble/RxTest', '~> 4.7'
    test_spec.dependency 'Quick', '~> 5.0'
    test_spec.dependency 'SnapshotTesting', '~> 1.8'
    test_spec.scheme = {
      :code_coverage => true
    }
  end


    test_spec.dependency 'RxNimble/RxTest', '~> 4.7' # RxTest
    test_spec.dependency 'Quick', '~> 5.0'
    test_spec.scheme = {
      :code_coverage => true
    }
  end

#    app_spec.pod_target_xcconfig = {
#      'PRODUCT_MODULE_NAME' => 'Pockets Journey'
#    }
  end
end

