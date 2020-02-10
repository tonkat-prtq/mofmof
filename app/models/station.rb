class Station < ApplicationRecord
  belongs_to :house
  validates :line, presence: true
  validates :name, presence: true
  validates :take_minutes, presence: true
end
