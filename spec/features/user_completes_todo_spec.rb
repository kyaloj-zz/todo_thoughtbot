require 'rails_helper'

feature 'user completes todo' do
  scenario 'successfully' do
    sign_in
    create_todo 'Write code'

    click_on 'Completed'

    expect(page).to display_completed_todo 'Write code'
  end
end
