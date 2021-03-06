class BasicAuth < PageActions
  SUCCESS_MESSAGE = { css: '.example p' }

  def with(username, password)
    url = "http://#{username}:#{password}@the-internet.herokuapp.com/basic_auth"
    @browser.get url
  end

  def success_message
    @browser.find_element(SUCCESS_MESSAGE)
  end

end