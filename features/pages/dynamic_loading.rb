class DynamicLoading < PageActions
  START_BUTTON = {css: '#start button'}
  FINISH_ELEMENT = {css: '#finish'}
  @example_page = {:one => "https://the-internet.herokuapp.com/dynamic_loading/1", :two => "https://the-internet.herokuapp.com/dynamic_loading/2" }

  def path(key)
    skey = key.to_sym
    @example_page[skey]

    # @example_page[key.to_sym]
  end

  # EXAMPLE_PAGE["#{@example}"]
  # URI::HTTPS.build(host: 'https://the-internet.herokuapp.com/dynamic_loading/', query: EXAMPLE_PAGE.to_query)

  def start_button
    @browser.find_element(START_BUTTON)
  end

  def finish_element
    @browser.find_element(FINISH_ELEMENT)
  end

  def success_message_displayed?
    wait_for(10){finish_element.displayed?}
  end
end