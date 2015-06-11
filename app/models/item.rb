class Item < ActiveRecord::Base
	belongs_to :idea
	has_many :photos, :dependent => :destroy 
	has_many :orders
	validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :name, presence: true
end
