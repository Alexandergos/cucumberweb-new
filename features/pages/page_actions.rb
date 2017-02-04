class PageActions

  def initialize(browser)
    @browser = browser
  end

  def visit(arg)
    @browser.navigate.to self.path(arg)
  end

  def wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end
end