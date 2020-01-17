require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'os'

Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Chrome.driver_path = OS.windows? ? './features/support/drivers/chromedriver.exe' : './features/support/drivers/chromedriver'
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 30
  config.default_driver = :selenium
  config.app_host = 'https://www.neon.com.br'
end
