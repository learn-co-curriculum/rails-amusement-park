class Attraction < ApplicationRecord
  # write model associations
  has_many :rides
  has_many :users, through: :rides

  #validations
  validates :name, :min_height, :nausea_rating, :happiness_rating, :tickets, presence: true
end
