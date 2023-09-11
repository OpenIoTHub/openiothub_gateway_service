#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint openiothub_gateway_service.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'openiothub_gateway_service'
  s.version          = '0.0.1'
  s.summary          = 'OpenIoTHub gateway service'
  s.description      = <<-DESC
OpenIoTHub gateway service
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  # This will ensure the source files in Classes/ are included in the native
  # builds of apps using this FFI plugin. Podspec does not support relative
  # paths, so Classes contains a forwarder C file that relatively imports
  # `../src/*` so that the C sources can be shared among all target platforms.
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'

  s.dependency 'OpenIoTHubGateway' , '0.0.4'
  s.static_framework = true

#   s.frameworks = 'OpenIoTHubGateway'
#   s.xcconfig =  {'OTHER_LDFLAGS' => '-framework OpenIoTHubGateway'}
#   s.preserve_paths = 'OpenIoTHubGateway.xcframework/**/*'

#   s.preserve_paths = 'Client.xcframework/**/*'
#   s.xcconfig =  {'OTHER_LDFLAGS' => '-framework Client'}
#   s.vendored_frameworks = 'Client.xcframework'
#   s.libraries = "resolv.9", "resolv"

#   s.static_framework = true
#   s.preserve_paths = 'Client.framework/**/*'
#   s.xcconfig =  {'OTHER_LDFLAGS' => '-framework Client'}
#   s.vendored_frameworks = 'Client.framework'
#   s.static_framework = true
end
