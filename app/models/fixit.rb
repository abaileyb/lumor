class Fixit < ActiveRecord::Base
  belongs_to :user
  has_attached_file :pic
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
end
