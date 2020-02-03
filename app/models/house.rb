class House < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations
  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :age, presence: true
end
