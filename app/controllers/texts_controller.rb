class TextsController < ApplicationController
  before_action :authenticate_user!

  def index
    # ()にマッチするレコードを全て取得する
    @texts = Text.where(genre: ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"])
  end

  def show
    @text = Text.find(params[:id])
  end
end