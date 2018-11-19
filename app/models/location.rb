class Location < ApplicationRecord
  belongs_to :vehicel
  belongs_to :user
  validates :latitude , uniqueness: true
  validates :longitude , uniqueness: true
end
