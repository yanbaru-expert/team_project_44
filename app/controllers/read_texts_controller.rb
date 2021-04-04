class ReadTextsController < ApplicationController
  def create
    @text = Text.find(params[:text_id])
    current_user.read_texts.create!(text_id: @text.id)
  end

  def destroy
    @text = Text.find(params[:text_id])
    current_user.read_texts.find_by(text_id: @text.id).destroy!
  end
end