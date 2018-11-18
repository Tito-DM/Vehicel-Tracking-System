class Vehicel < ApplicationRecord
  belongs_to :user
  has_many :locations, :dependent => :destroy
  validates :First_name, presence:true, length: {minimum:3, maximum:50}
  validates :surname, presence:true, length: {minimum:3, maximum:50}
  validates :vehicel_brand, presence:true, length: {minimum:3, maximum:50}
  validates :vehicel_model, presence:true, length: {minimum:3, maximum:50}
  validates :vehicel_color, presence:true, length: {minimum:3, maximum:50}
  validates :plate_number,uniqueness:true , presence:true, length: {minimum:3, maximum:50}
end