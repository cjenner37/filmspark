class Viewing < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :liked, acceptance: { message: "You must say whether or not you liked the movie."}

end
