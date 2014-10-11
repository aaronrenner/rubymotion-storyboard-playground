require 'rubygems'
require 'bundler'
Bundler.setup
require 'appium_lib'
require 'pry'

# http://engineering.hoteltonight.com/leveraging-mobile-automation-with-appium

RSpec.configure do |config|
  # config.include Helpers
  config.before(:all) do
    options = {
      caps: {
        platformName: 'iOS',
        app: "/Users/aaron/projects/ruby_motion_tutorials/storyboard_example/build/iPhoneSimulator-7.0-Development/storyboard_example.app",
        platformVersion: '7.1',
        deviceName: 'iPhone 4s',
        locationServicesEnabled: false,
        autoAcceptAlerts: 'true'
      } ,
      app_name: 'story_board_example',
      launchTimeout: 20000,
    }
    Appium::Driver.new(options).start_driver
    Appium.promote_appium_methods Object
  end

  config.after(:all) do
    driver_quit
  end
end
