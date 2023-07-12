class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy

  def flop?
    total_gross < 225_000_000
  end
end
