class TextManagementsController < ApplicationController
  def create
    @text = Text.find(params[:text_id])
    current_user.text_managements.create!(text_id: @text.id)
  end

  def destroy
    @text = Text.find(params[:text_id])
    current_user.text_managements.find_by(text_id: @text.id).destroy!
  end
end