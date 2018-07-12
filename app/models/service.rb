class Service < ApplicationRecord
  validates :name, :price, :duration, presence: true
end
