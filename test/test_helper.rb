ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require 'webdrivers'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers

  Webdrivers::Chromedriver.required_version = '120.0.6099'

  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  Capybara.register_driver :selenium do |app|
    options = Selenium::WebDriver::Chrome::Options.new(args: ['--no-sandbox', '--disable-dev-shm-usage'])
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
  end
end
