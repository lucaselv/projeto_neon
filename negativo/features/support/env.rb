require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'

Capybara.configure do |config|
    #selenium   selenium_chrome   selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.neon.com.br'
    config.default_max_wait_time = 5
end