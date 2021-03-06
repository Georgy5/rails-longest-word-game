class GamesController < ApplicationController
  def new
    # create @letters storing random letters from the alphabet
    @letters = []
    grid_size = 10
    # Generate random grid of letters
    @letters = Array.new(grid_size) { ('a'..'z').to_a.sample }
  end

  def score
    raise
  end

  def parse_dictionary(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    word_serialized = open(url).read
    api_result = JSON.parse(word_serialized)
    return api_result
  end
end
