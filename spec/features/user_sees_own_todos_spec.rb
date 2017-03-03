require 'rails_helper'

feature 'Sees own todos' do
  scenario 'cant see other users todos' do
    Todo.create!(title: 'Write code', email: 'another@human.com')
    sign_in_as('human@human.com')
    expect(page).to have_css 'h1', text: 'Todos'
    expect(page).not_to display_todo 'Write code'
  end
end
