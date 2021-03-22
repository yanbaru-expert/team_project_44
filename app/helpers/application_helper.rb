module ApplicationHelper
  
  def max_width
    devise_controller? ? 'mw-md' : 'mw-xl'
  end

  def not_logged_in
    "disabled" unless user_signed_in?
  end
end