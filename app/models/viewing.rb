class Viewing < ApplicationRecord
  belongs_to :user
  belongs_to :movie, dependent: :destroy

end
