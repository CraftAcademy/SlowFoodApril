class Restaurant < ApplicationRecord
  validates_presence_of :name, presence: true
  validates_presence_of :address, presence: true
  validates_presence_of :city, presence: true
  validates_presence_of :state, presence: true
  validates_presence_of :country, presence: true
end
