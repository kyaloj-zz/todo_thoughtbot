require 'rails_helper'

describe Todo, '#completed?' do
  it 'returns true if completed_at is set' do
    todo = Todo.new(completed_at: Time.now)
    expect(todo).to be_completed
  end

  it 'returns false if completed_at is null' do
    todo = Todo.new
    expect(todo).not_to be_completed
  end
end