class Vehicel < ApplicationRecord
  belongs_to :user
  validates :First_name, presence:true, length: {minimum:3, maximum:50}
  validates :surname, presence:true, length: {minimum:3, maximum:50}
  validates :vehicel_brand, presence:true, length: {minimum:3, maximum:50}
  validates :vehicel_model, presence:true, length: {minimum:3, maximum:50}
  validates :vehicel_color, presence:true, length: {minimum:3, maximum:50}
  validates :plate_number, presence:true, length: {minimum:3, maximum:50}
end