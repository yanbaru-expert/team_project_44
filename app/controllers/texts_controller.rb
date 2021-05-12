class TextsController < ApplicationController
  before_action :authenticate_user!

  def index
    # ()にマッチするレコードを全て取得する
    @texts = Text.where(genre: ["basic", "git", "html", "ruby", "rails"])
    @read_text_ids = current_user.reads.pluck(:text_id)
  end

  def show
    @text = Text.find(params[:id])
  end
end