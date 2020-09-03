When /^I try to search using Wikipedia App/ do
  $wait.until { $driver.find_element(:accessibility_id, "Search Wikipedia").displayed? }
  $driver.find_element(:accessibility_id, "Search Wikipedia").click
end
 
When("I type in {string}") do |search_keyword|
  $wait.until { $driver.find_element(:id, "org.wikipedia.alpha:id/search_src_text").displayed? }
  search_box = $driver.find_element(:id, "org.wikipedia.alpha:id/search_src_text")
  search_box.send_key(search_keyword)
  sleep 5
end
 
Then /^I should see results$/ do
  $driver.find_elements(:class, "android.widget.TextView").size.should > 0
end
