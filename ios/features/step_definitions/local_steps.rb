When /^I start test on the Local Sample App/ do
  $wait.until { $driver.find_element(:id, "TestBrowserStackLocal").displayed? }
  $driver.find_element(:accessibility_id, "TestBrowserStackLocal").click
end

Then("I should see {string}") do |match_string|
  sleep 5
  $wait.until do
    value = $driver.find_element(:accessibility_id, "ResultBrowserStackLocal").attribute("value")
    !value.nil? && value.size > 0
  end
  result_text = $driver.find_element(:accessibility_id, "ResultBrowserStackLocal").text.downcase

  result_text.should include("up and running")
end
