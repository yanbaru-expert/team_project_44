class WatchesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    current_user.watches.create!(movie_id: @movie.id)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    current_user.watches.find_by(movie_id: @movie.id).destroy!
  end
end
