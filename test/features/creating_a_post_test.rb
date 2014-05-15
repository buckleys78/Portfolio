require "test_helper"

feature "Creating A Post" do
  scenario "submit form data to create a new post" do
    # Given a completed new post fomr
    visit new_post_path
    fill_in "Title", with:  posts(:cr).title
    fill_in "Body",  with:  posts(:cr).body
    # When I submit form
    click_on "Create Post"
    #Then a new post should be created and displayed
    page.text.must_include "Post was successfully created"
    page.text.must_include posts(:cr).body
  end
end
