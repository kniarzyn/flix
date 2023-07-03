class Movie < ApplicationRecord
  def flop?
    total_gross < 100_000
  end
end
