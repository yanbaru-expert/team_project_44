class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: ["basic", "git", "ruby", "rails"])
    @watched_movie_ids = current_user.watches.pluck(:movie_id)
  end
end
