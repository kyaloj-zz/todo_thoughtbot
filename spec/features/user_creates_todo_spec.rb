require 'rails_helper'

feature 'User creates todo' do
  scenario 'Successfully' do
    visit root_path
    click_on 'New todo'
    fill_in 'Title', with: 'Write code'
    click_on 'Submit'

    expect(page).to have_css '.todo li', text: 'Write code'
  end
end
