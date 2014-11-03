When(/^I run 'pmb'$/) do
  steps %{
  	When I run `pmb` interactively
  }
end

When(/^I enter the number "(.*?)"$/) do |arg1|
  steps %{
  	When I type "100"
  	When I type "10000"
  }
end

Then(/^the output should be "([^"]*)"$/) do |output|
  steps %{
  	Then it should pass with:
  	"""
  	Company A Matches
  	Company B Matches
  	Company C Matches
  	"""
  }
end

When(/^I enter the low of "(.*?)"$/) do |arg1|
  steps %{
  	When I type "100"
  }
end

When(/^I enter the high of "(.*?)"$/) do |arg1|
  steps %{
  	When I type "1000"
  }
end

Then(/^the output should be two companies "(.*?)"$/) do |arg1|
  steps %{
  	Then it should pass with:
  	"""
  	Company A Matches
  	Company C Matches
  	"""
  }
end

When(/^I enter no low number$/) do
  steps %{
  	When I type ""
  }
end

When(/^I enter a new low of (\d+)$/) do |arg1|
  steps %{
  	When I type "7000"
  }
end

When(/^I enter no high value$/) do
  steps %{
  	When I type ""
  }
end

Then(/^the output should be one company "(.*?)"$/) do |arg1|
steps %{
  	Then it should pass with:
  	"""
  	Company B Matches
  	"""
  }
end