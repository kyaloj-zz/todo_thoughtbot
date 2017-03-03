#
module Features
  def create_todo(title)
    click_on 'New todo'
    fill_in 'Title', with: title
    click_on 'Submit'
  end

  def display_completed_todo(title)
    have_css '.todo li.completed', text: title
  end

  def display_todo(title)
    have_css '.todo li', text: title
  end
end
