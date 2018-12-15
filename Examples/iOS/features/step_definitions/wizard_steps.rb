Given (/^I am on Welcome screen$/) do
	wait_true (10) do
		find_element(:name, 'Welcome!').displayed?
	end
end

When (/^I press Next button (\d+) times$/) do |clicksCount|
	for click in (0...clicksCount)
		find_element(:accessibility_id, 'first_run_wizard.welcome.button.next').click()
	end
end

Then (/^I am on Agreements screen$/) do
	wait_true (10) do
		find_element(:name, 'Terms and Conditions').displayed?
	end
end