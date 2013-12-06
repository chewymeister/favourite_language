When(/^the user submits a valid github username such as "(.*?)"$/) do |username|
  visit '/'
  fill_in 'user', with: username
  click_button 'Submit'
end

Then(/^the user will see the name of the most popular language used in that repository "(.*?)"$/) do |language|
  expect(page).to have_content language
end
