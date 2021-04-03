class TextManagementsController < ApplicationController
  def create
    current_user.text_managements.create!(text_id: params[:text_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.text_managements.find_by(text_id: params[:text_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end