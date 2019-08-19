#GIVEN STEPS

Given(/^the user accessed Google Search US$/) do
  $driver.navigate.to("https://www.google.com/?gl=us&hl=en")
end

#WHEN STEPS

#Generic search on Google
When(/^the user search for "([^"]*)"$/) do |text|
  $driver.find_element(:xpath,"//input[@title='Search']").send_keys(text)
  $driver.action.send_keys(:enter).perform
end

#Click on the first result on the results page
When(/^the user click on the first result$/) do
  #Wait for the results
  wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  text = wait.until {
    element = $driver.find_element(:xpath,"//div[@id='resultStats']")
    element if element.displayed?
  }    
  #Access the first result on the list:
  $driver.find_element(:xpath,"//div[h2[contains(.,'Web results')]]/div/div/div/div/a").click()
end

#THEN STEPS

#Assert a text on the page
Then(/^the user see "([^"]*)" on the page$/) do |expected_text|
  expect($driver.page_source).to include(expected_text)
end