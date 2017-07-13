class Movie < ApplicationRecord
	has_many :viewings
	has_many :users, through: :viewings
	has_many :reviews
	belongs_to :creator, class_name: "User", foreign_key: 'user_id'
end
