

Given("the following user exists:") do |user_table|
    user_table.hashes.each do |user|
    user.create!(user)
  end
end
Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in string,	with: string2
end

When("I click on {string}") do |text|
  click_link_or_button text
end

Then("I should see {string}") do |string|
  page.should have_content(string)
end