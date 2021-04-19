class QuestionsController < ApplicationController
  def index
    @q = Question.ransack(params[:q])
    @questions = @q.result.page(params[:page])
  end

  def show
  end
end
