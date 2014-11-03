@announce
Feature: Test that two entered numbers return the right companies
	In order to test that my class is performing matches properly
	I need to test against known matches.

	Scenario: Entering values that give me all companies
		When I run 'pmb'
		And I enter the number "100"
		And I enter the number "10000"
		Then the output should be "Company A Matches Company B Matches Company C Matches"

	Scenario: Entering values that give me all companies
		When I run 'pmb'
		And I enter the low of "100"
		And I enter the high of "1000"
		Then the output should be two companies "Company A Matches Company C Matches"

	Scenario: Entering no low value defaults low to zero
		When I run 'pmb'
		And I enter no low number
		And I enter the high of "1000"
		Then the output should be two companies "Company A Matches Company C Matches"

	Scenario: Entering no high value defaults high to 10000
		When I run 'pmb'
		And I enter a new low of 7000
		And I enter no high value
		Then the output should be one company "Company B Matches"