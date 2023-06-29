class MoviesController < ApplicationController
  def index
    @movies = ["IronMan", "Superman", "Batman"]
  end
end
