module ApplicationHelper
  def max_width
    'mw-xl'
  end

  def devise_max_width
    'mw-md'
  end
  
  def not_logged_in
    "disabled" unless user_signed_in?
  end
end

