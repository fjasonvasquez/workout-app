require "rails_helper"

RSpec.feature "Users signup" do
	scenario "with valid credentials" do
		visit "/"

		click_link "Sign up"
		fill_in "Email", with: "user@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_link "Sign in"

		expect(page).to have_content("You have signed up successfully.")
	end
end