require 'rails_helper'

feature 'User creates todo' do
  scenario 'Successfully' do
    sign_in
    create_todo 'Write code'
    expect(page).to display_todo 'Write code'
  end
end
