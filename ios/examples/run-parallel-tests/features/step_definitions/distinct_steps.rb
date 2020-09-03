When /^I try to find Text Button in Sample App/ do
  $wait.until { $driver.find_element(:accessibility_id, "Text Button").displayed? }
  $driver.find_element(:accessibility_id, "Text Button").click
end
 
When("I type in {string} in the Text Input field") do |text|
  puts "Received #{text}"
  $wait.until { $driver.find_element(:accessibility_id, "Text Input").displayed? }
  text_input = $driver.find_element(:accessibility_id, "Text Input")
  text_input.send_keys(text+"\n")
  sleep 5
end
 
Then /^I should get the entered text in the Text Output field$/ do
  sleep 5
  text_output = $driver.find_element(:accessibility_id, "Text Output")
  text_output.text.should eq("hello@browserstack.com")
end
