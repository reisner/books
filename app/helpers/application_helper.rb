module ApplicationHelper
  def can_curate?
    return current_user.try(:admin?)
  end
end
