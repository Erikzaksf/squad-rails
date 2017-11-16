require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_link 'New Post'
    fill_in 'Title', :with => 'Test'
    click_on 'Create Post'
    expect(page).to have_content 'Posts'
  end

  it "gives error when no name is entered" do
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end
end
