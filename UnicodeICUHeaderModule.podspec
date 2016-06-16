Pod::Spec.new do |s|
  s.name             = 'UnicodeICUHeaderModule'
  s.version          = '0.1.0'
  s.summary          = 'A modulemap for using ICU in Swift'

  s.description      = <<-DESC
Makes the ICU library that is included in iOS at the BSD (nonframework) level of the system available as a Clang Module. This allows using this library in Swift.
                       DESC

  s.homepage         = 'https://github.com/timbodeit/UnicodeICUHeaderModule'
  s.license          = { :type => 'custom', :file => 'LICENSE' }
  s.author           = { 'Tim Bodeit' => 'tim@bodeit.com' }
  s.source           = { :git => 'https://github.com/timbodeit/UnicodeICUHeaderModule.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Pod/Empty.swift', 'Pod/unicode/*.h'
  s.public_header_files = 'Pod/unicode/*.h'
  s.header_dir = 'unicode'
  s.module_map = "Pod/module.modulemap"
end
