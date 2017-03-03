require 'rails_helper'

feature 'user marks todo incomplete' do
  scenario 'successfully' do
    sign_in
    create_todo 'Write code'

    click_on 'Completed'
    click_on 'Not Completed'

    expect(page).not_to display_completed_todo 'Write code'
    expect(page).to display_todo 'Write code'
  end
end
