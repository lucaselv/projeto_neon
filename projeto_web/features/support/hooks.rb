Before do
  @app = App.new
end

Before do |_scenario|
  Capybara.page.driver.browser.manage.window.maximize
end
