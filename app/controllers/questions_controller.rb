class QuestionsController < ApplicationController
  def index
    @q = Question.ransack(params[:q])
    @qestions = @q.result.page(params[:page]).per(PER_PAGE)
  end

  def show
  end
end
