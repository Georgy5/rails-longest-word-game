class GamesController < ApplicationController
  def new
    # create @letters storing random letters from the alphabet
    @letters = []
    grid_size = 10
    # Generate random grid of letters
    @letters = Array.new(grid_size) { ('a'..'z').to_a.sample }
  end

  def score
  end
end
