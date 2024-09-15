Pod::Spec.new do |s|
  s.name = 'MyLibrary'
  s.version = '4.2.5'
  s.summary = 'MyLibrary'
  s.description = s.summary
  s.license = 'Backbase License'
  s.homepage = 'http://www.backbase.com/home'
  s.author = 'Backbase B.V.'

  s.platform = :ios
  s.ios.deployment_target = '12.0'
  s.scheme = { :code_coverage => false }

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source = { git: 'https://github.com/jordantangy/MyLibrary.git' }

  s.dependency 'Backbase', '>= 12.0'


  # ――― Test Specification ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
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
end

