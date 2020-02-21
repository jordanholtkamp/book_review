require 'rails_helper'

describe('User can visit the welcome page') do
  it('and see a book search form') do
    visit root_path

    expect(page).to have_content("Welcome to Book Review")
    expect(page).to have_content("Search for a Book")
    expect(page).to have_button("Find Book")
  end
end