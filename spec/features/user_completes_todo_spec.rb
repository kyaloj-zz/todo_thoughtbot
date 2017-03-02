require 'rails_helper'

feature 'user completes todo' do
  scenario 'successfully' do
    sign_in
    click_on 'New todo'
    fill_in 'Title', with: 'Write code'
    click_on 'Submit'

    click_on 'Completed'

    expect(page).to have_css '.todo li.completed', text: 'Write code'
  end
end
