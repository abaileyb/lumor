class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :comments
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :name
end
