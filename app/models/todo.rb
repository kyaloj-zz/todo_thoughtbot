# some xplanation
class Todo < ApplicationRecord
  def completed?
    completed_at?
  end

  def completed!
    touch :completed_at
  end

  def not_completed!
    update_attributes(completed_at: nil)
  end
end
