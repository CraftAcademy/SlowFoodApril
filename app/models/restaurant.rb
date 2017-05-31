class Restaurant < ApplicationRecord
  belongs_to :rest_category
  belongs_to :user

  validates_presence_of :name, presence: true
  validates_presence_of :address, presence: true
end
