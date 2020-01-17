Before do
  @app = App.new
end

Before do |scenario|
  Capybara.page.driver.browser.manage.window.maximize
end