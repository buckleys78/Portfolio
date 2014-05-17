require "test_helper"

feature "Editing A Post" do
  scenario "submit updates to an existing post" do
    # Given an existing post
    sign_in(:author)
    visit post_path(posts(:cr))

    # When I click Edit and Update the post,
    click_on "Edit"
    fill_in "Title", with: "Becoming a Web Developer"
    click_on "Update Post"

    # Then the post is updated.
    page.text.must_include "Post was successfully updated."
    page.text.must_include "Web Developer"
    page.wont_have_content posts(:cr).title
  end
end
