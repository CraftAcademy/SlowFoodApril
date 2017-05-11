class Restaurant < ApplicationRecord
  validates_presence_of :name, presence: true
  validates_presence_of :address, presence: true
end
