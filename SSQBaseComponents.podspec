#
# Be sure to run `pod lib lint SSQBaseComponents.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SSQBaseComponents'
  s.version          = '0.1.0'
  s.summary          = 'All the base components you long for.'
  s.swift_version    = '4.0'
  s.description      = 'The base components that the SpaceSquad team uses for their projects.'
  s.homepage         = 'https://github.com/space-squad/SSQBaseComponents'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Malte Schoppe' => 'mse@spacesquad.de' }
  s.source           = { :git => 'https://github.com/space-squad/SSQBaseComponents.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'SSQBaseComponents/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SSQBaseComponents' => ['SSQBaseComponents/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
