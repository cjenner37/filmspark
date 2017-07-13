class Movie < ApplicationRecord
	has_many :viewings
	has_many :users, through: :viewings
	has_many :reviews
end
