When /^I start test on the Local Sample App/ do
  $wait.until { $driver.find_element(:id, "com.example.android.basicnetworking:id/test_action").displayed? }
  $driver.find_element(:id, "com.example.android.basicnetworking:id/test_action").click
end

Then("I should see {string}") do |match_string|
  $wait.until { $driver.find_element(:class, "android.widget.TextView").displayed? }
  text_elements = $driver.find_elements(:class, "android.widget.TextView")
  local_text_element = text_elements.select { |each_element| each_element.text.match(/The active connection is/) }
  local_text = local_text_element.first.text
  local_text.should include("The active connection is wifi.")
  local_text.should include("Up and running")
end
