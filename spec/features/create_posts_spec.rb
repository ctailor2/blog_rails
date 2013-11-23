require 'spec_helper'

feature "Create posts with tags" do
	scenario "only 1 tag selected" do
		visit '/'
		click_link "New Post"
		fill_in "Title", with: "New title"
		fill_in "Body", with: "New body"
		check("New checkbox")
	end
end