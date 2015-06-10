class Item < ActiveRecord::Base
	belongs_to :idea
	has_many :photos, :dependent => :destroy 
end
