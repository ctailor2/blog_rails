require 'spec_helper'

feature "Create posts" do
	scenario "with no tags selected" do
		visit '/'
		click_link "New Post"

		fill_in "Title", with: "New title"
		fill_in "Body", with: "New body"
		click_button "Create Post"

		expect(page).to have_text("New title")
		expect(page).to have_text("New body")
	end

	scenario "with one tag selected" do
		visit '/'
		click_link "New Post"
		fill_in "Title", with: "New title"
		fill_in "Body", with: "New body"
		check("New checkbox")
	end

end