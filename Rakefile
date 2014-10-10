# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'storyboard_example'
  app.deployment_target = '7.0'
  app.provisioning_profile = Dir["#{Dir.home}/Library/MobileDevice/Provisioning Profiles/*.mobileprovision"].first
end
